import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/identity/controllers/identity_notifier.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

Future<void> showWelcomeDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (BuildContext ctx) {
      return const AlertDialog(
        title: null,
        content: WelcomeScreen(),
      );
    },
  );
}

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final identityProvider = ref.watch(asyncIdentityProvider);

    return SizedBox(
      width: 460,
      height: 520,
      child: Column(children: <Widget>[
        Expanded(
          child: SizedBox(
            width: 360,
            height: 360,
            child: Image.asset(
              'assets/images/welcome1.png',
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: const Column(
            children: <Widget>[
              Text('Welcome',
                  style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0XFF3F3D56),
                      height: 2.0)),
            ],
          ),
        ),
        Align(
          child: Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(top: 4.0),
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: identityProvider.when(
              loading: () => const SizedBox(
                  width: 40, height: 40, child: CircularProgressIndicator()),
              error: (err, stack) => logAsyncError("WelcomeScreen", err, stack),
              data: (identity) {
                final identityNotifier =
                    ref.read(asyncIdentityProvider.notifier);
                return Column(
                  children: [
                    identityNotifier.isLoggedIn()
                        ? CustomElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            text: 'Continue as ${identity.userInfo?.email}',
                          )
                        : CustomElevatedButton(
                            onPressed: () async {
                              await identityNotifier.authenticate();
                            },
                            text: 'Login with USDA eAuthentication',
                          ),
                    (identity.error != null) ? 
                        Text("eAuth Server Error",
                          style: TextStyle(color: Colors.red)) : Text(""),
                    _logo,
                  ],
                );
              },
            ),
          ),
        ),
      ]),
    );
  }

  Widget get _logo {
    return Image.asset(
      'assets/images/eauth-logo.png',
      semanticLabel: 'eAuth Logo',
      width: 100,
      height: 50,
    );
  }
}
