import 'package:flutter/material.dart';

import '../constante/app_constante.dart';

class AppTextFormFields extends StatelessWidget {
  const AppTextFormFields({super.key, required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: AppConstante.kTextgray,
          fontSize: 16,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: AppConstante.kTextgray,
              width: 1
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: AppConstante.kTextgraySecond,
              width: 1
          ),
        ),
      ),
    );
  }
}
