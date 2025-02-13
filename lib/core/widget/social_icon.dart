import 'package:flutter/material.dart';

import '../constante/app_constante.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.facebook,
          color: AppConstante.kTextColorPrimary,
          size: 50,
        ),
        SizedBox(width: 20,),
        Icon(
          Icons.facebook,
          color: AppConstante.kTextColorPrimary,
          size: 50,
        ),
        SizedBox(width: 20,),
        Icon(
          Icons.youtube_searched_for,
          color: AppConstante.kTextColorPrimary,
          size: 50,
        ),
      ],
    );
  }
}
