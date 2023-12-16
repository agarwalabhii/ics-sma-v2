import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_common_ux/src/identity/controllers/identity_notifier.dart';
import 'package:sma_local_data/sma_local_data.dart';


class DiagnosticTokenGridTile extends ConsumerWidget {
  const DiagnosticTokenGridTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final identityProvider = ref.watch(asyncIdentityProvider);

    return identityProvider.when(
        error: (err, stack) =>
            logAsyncError("DiagnosticTokenGridTile", err, stack),
        loading: () => const CircularProgressIndicator(),
        data: (identity) {
          final token = identity.credential?.toString();
          final userInfo = identity.userInfo;
          final firstName = userInfo?.givenName ?? "N/A";
          final lastName = userInfo?.familyName ?? "N/A";
          final email = userInfo?.email ?? "N/A";
          final expirationDate = identity.credential?.dateOfExpiration();
          return Card(
            color: Colors.deepOrange,
            child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.deepOrangeAccent,
                leading: const CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.token),
                ),
                title: const Text(
                  'eAuth Token',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                    expirationDate == null ? 'N/A' : 'Until $expirationDate',
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                trailing: IconButton(
                    onPressed: () {
                      Clipboard.setData(
                          ClipboardData(text: token ?? 'Not available'));
                      const snackBar = SnackBar(
                        content: Text('eAuth Token copied to the clipboard.'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    icon: const Icon(
                      Icons.content_copy,
                      color: Colors.black54,
                    )),
              ),
              child: ListView(
                padding: const EdgeInsets.all(8),
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    title: const Text('First Name'),
                    subtitle: Text(firstName),
                  ),
                  ListTile(
                    title: const Text('Last Name'),
                    subtitle: Text(lastName),
                  ),
                  ListTile(
                    title: const Text('Email'),
                    subtitle: Text(email),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
