import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sma_common_ux/src/identity/openid/openid_client_io.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_remote_data/sma_remote_data.dart';
import 'package:url_launcher/url_launcher.dart';

part 'identity_notifier.g.dart';

const eAuthDiscoveryUrl =
    'https://gateway.cert.eauth.usda.gov/affwebservices/CASSO/oidc/USDA_FSIS_ANET_ICS_SMA_v0';
const scopes = ['openid', 'profile', 'email', 'usda_credential_data'];

Client? client;

// TODO: serialized with shared preference to retore between app launches
Identity persistedIdentity = const Identity();

@riverpod
class AsyncIdentity extends _$AsyncIdentity {
  AsyncIdentity();

  static Future<Credential?> getRedirectResult(Client client,
      {List<String> scopes = const []}) async {
    return null;
  }

  @override
  FutureOr<Identity> build() async {
    return persistedIdentity;
  }

  Future<void> authenticate() async {
    state = const AsyncValue.loading();
    if (client == null) {
      var uri = Uri.parse(eAuthDiscoveryUrl);
      // if (!kIsWeb && Platform.isAndroid) uri = uri.replace(host: '10.0.2.2');
      var clientId = '397be1a7-eddf-4cc2-a462-68b82305c46f';
      var issuer = await Issuer.discover(uri);
      client = Client(issuer, clientId);
    }
    // create an authenticator
    final authenticator = Authenticator(client!,
        scopes: scopes, port: 443, urlLancher: _urlLauncher);

    // starts the authentication
    Credential? credential;
    UserInfo? userInfo;
    Object? error;
    try {
      credential = await authenticator.authorize();
      userInfo = await credential.getUserInfo();
      persistedIdentity = Identity(credential: credential, userInfo: userInfo);
    } catch (err) {
      print("authorize err: $err");
      error = err;
    }

    state = await AsyncValue.guard(() async {
      if (credential != null && userInfo != null) {
        final loginUserUsecase = ref.read(loginUserUsecaseProvider.notifier);
        print("subject: ${userInfo.subject}");
        loginUserUsecase.initWithEAuthId(userInfo.subject);

        final remoteRequest = ref.read(remoteRequestProvider.notifier);
        print("accessToken: ${credential.accessToken}");
        remoteRequest.setAccessToken(credential.accessToken);
      }
      return Identity(credential: credential, userInfo: userInfo, error: error);
    });
  }

  void _urlLauncher(String url) async {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri) || Platform.isAndroid) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  bool isLoggedIn() {
    return state.value?.credential != null;
  }

  void logout() {
    persistedIdentity = const Identity();
    state = const AsyncValue.data(Identity());
  }
}

class Identity {
  final Credential? credential;
  final UserInfo? userInfo;
  final Object? error;

  const Identity({this.credential, this.userInfo, this.error});
}
