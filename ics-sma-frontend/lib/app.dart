import 'package:anet/features/home/home_page.dart';
import 'package:anet/common/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_common_ux/ux.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      // https://docs.flutter.dev/accessibility-and-localization/internationalization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('en'), // English
      ],
      theme: AppThemeData.lightThemeData,
      onGenerateRoute: (settings) {
        return Routes.generateRoute(settings);
      },
      home: const HomePage(),
      scrollBehavior:
          ScrollConfiguration.of(context).copyWith(scrollbars: false),
    );
  }
}
