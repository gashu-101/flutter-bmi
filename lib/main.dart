import 'package:flutter/material.dart';
import 'package:bmi/screens/input_page.dart';
import 'package:provider/provider.dart';
import 'package:bmi/theme_provider.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            theme: ThemeData.light().copyWith(
              primaryColor: Colors.white,
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: AppBarTheme(
                color: Colors.white,
                titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
                iconTheme: IconThemeData(color: Colors.black),
              ),
              textTheme: TextTheme(
                bodyMedium: TextStyle(color: Colors.black),
              ),
            ),
            darkTheme: ThemeData.dark().copyWith(
              primaryColor: Color(0xFF0A0E21),
              scaffoldBackgroundColor: Color(0xFF0A0E21),
              appBarTheme: AppBarTheme(
                color: Color(0xFF0A0E21),
              ),
            ),
            themeMode: themeProvider.themeMode,
            home: InputPage(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
