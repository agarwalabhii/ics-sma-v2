import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/identity/controllers/identity_notifier.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

Future<void> showIdentityDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (BuildContext ctx) {
      return const AlertDialog(
        title: Text(
          "Login",
          textAlign: TextAlign.center,
        ),
        content: IdentityWidget(),
      );
    },
  );
}

class IdentityWidget extends ConsumerWidget {
  const IdentityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final identityProvider = ref.watch(asyncIdentityProvider);
    return SizedBox(
      width: MediaQuery.of(context).size.width * .3,
      height: MediaQuery.of(context).size.height * .3,
      child: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          const IdentityMessageWidget(),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/images/eauth-logo.png',
              semanticLabel: 'eAuth Logo',
              width: 80,
              height: 40,
            ),
          ),
          identityProvider.when(
              error: (err, stack) =>
                  logAsyncError("IdentityWidget", err, stack),
              loading: () {
                return const ListTile(
                  title: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 40,
                          height: 40,
                          child: CircularProgressIndicator()),
                    ],
                  ),
                );
              },
              data: (identity) {
                final identityNotifier =
                    ref.read(asyncIdentityProvider.notifier);
                return ListTile(
                  title: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      CustomElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        enabled: identityNotifier.isLoggedIn(),
                        text: 'Continue',
                      ),
                      CustomElevatedButton(
                        onPressed: () async =>
                            await identityNotifier.authenticate(),
                        enabled: !identityNotifier.isLoggedIn(),
                        text: 'Login',
                      ),
                      CustomElevatedButton(
                        onPressed: () => identityNotifier.logout(),
                        enabled: identityNotifier.isLoggedIn(),
                        text: 'Logout',
                      ),
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}

class IdentityMessageWidget extends ConsumerWidget {
  const IdentityMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final identityProvider = ref.watch(asyncIdentityProvider);
    return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceEvenly,
        children: [
          identityProvider.when(
            data: (identity) {
              final identityNotifier = ref.read(asyncIdentityProvider.notifier);
              var text = "Please login with eAuth";
              if (identityNotifier.isLoggedIn()) {
                text = "${identity.userInfo?.email} is logged in.";
              }
              return Text(text);
            },
            error: (err, stack) =>
                logAsyncError("IdentityMessageWidget", err, stack),
            loading: () => const SizedBox(
                width: 40, height: 40, child: CircularProgressIndicator()),
          ),
        ]);
  }
}
