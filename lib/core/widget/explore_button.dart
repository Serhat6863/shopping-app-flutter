import 'package:flutter/material.dart';

import '../constante/app_constante.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
          color: AppConstante.kBackgroundColor,
          border: Border.all(
              color: const Color(0xFFD6D6D6) //gray[300]
          )
      ),
      width: 220,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppConstante.kTextStyleSubTitle,
          ),
          Icon(
            icon,
            color: AppConstante.kTextColorPrimary,
          ),
        ],
      ),
    );
  }
}
