import 'package:flutter/cupertino.dart';

import '../constante/app_constante.dart';

class ContactText extends StatelessWidget {
  const ContactText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppConstante.kTextColorPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
