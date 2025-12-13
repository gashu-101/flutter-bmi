import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';
import 'package:provider/provider.dart';
import 'package:bmi/theme_provider.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle.copyWith(color: themeProvider.labelTextColor),
        )
      ],
    );
  }
}
