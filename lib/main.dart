import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/screen/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: kBackgroundColor,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: const InputPage(),
    );
  }
}


