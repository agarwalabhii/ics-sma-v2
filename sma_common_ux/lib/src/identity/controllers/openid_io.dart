import 'dart:io';

import 'package:sma_common_ux/src/identity/openid/openid_client_io.dart';
import 'package:url_launcher/url_launcher.dart';

Future<Credential> authenticate(Client client,
    {List<String> scopes = const []}) async {
  // create a function to open a browser with an url
  urlLauncher(String url) async {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri) || Platform.isAndroid) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  // create an authenticator
  var authenticator = Authenticator(client,
      scopes: scopes, port: 443, urlLancher: urlLauncher);

  // starts the authentication
  var c = await authenticator.authorize();

  // close the webview when finished
  if (Platform.isAndroid || Platform.isIOS) {
    closeInAppWebView();
  }

  return c;
}

Future<Credential?> getRedirectResult(Client client,
    {List<String> scopes = const []}) async {
  return null;
}
