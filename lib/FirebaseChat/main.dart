import 'package:flutter/material.dart';
import 'package:flutter\_localizations/flutter\_localizations.dart';
import 'utils/localization.dart';

import 'screen/intro.dart';
import 'screen/login.dart';
import 'screen/sign_up.dart';
import 'screen/find_pw.dart';

class ChatApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Widgets Demo',
          supportedLocales: [
        const Locale('de', 'DE'),

    const Locale('en', 'US'),
    ],
    localizationsDelegates: [
      const LocalizationDelegate(),
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ],
    localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode || supportedLocale.countryCode == locale.countryCode) {
          return supportedLocale;
        }
      }
      return supportedLocales.first;
    },
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Login(),
      routes: <String, WidgetBuilder>{
      '/intro': (BuildContext context) => Intro(),
      '/login': (BuildContext context) => Login(),
      '/sign_up': (BuildContext context) => SignUp(),
      '/find_pw': (BuildContext context) => FindPw(),
      },
    );
  }
}
