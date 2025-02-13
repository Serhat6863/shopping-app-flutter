import 'package:flutter/material.dart';

import '../constante/app_constante.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: AppConstante.kBackgroundColor,
        border: Border.all(
          color: AppConstante.kTextColorPrimary,
          width: 1,
        ) ,
      ),
      width: double.infinity,
      height: 50,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppConstante.kTextColorPrimary,
          ),
          const SizedBox(width: 10,),
          Text(
            text,
            style: const TextStyle(
              letterSpacing: 2,
              color: AppConstante.kTextColorPrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
