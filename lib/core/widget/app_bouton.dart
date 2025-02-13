import 'package:flutter/material.dart';

import '../constante/app_constante.dart';

class AppBouton extends StatelessWidget {
  const AppBouton({super.key, required this.text, required this.color, required this.onTap});

  final String text;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: color,
        ),
        child:  Center(
          child: Text(
            text,
            style: TextStyle(
              color: AppConstante.kTextColorSecondary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
