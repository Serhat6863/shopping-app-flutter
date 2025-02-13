import 'package:flutter/material.dart';

import '../../../core/constante/app_constante.dart';

class SizeItem extends StatelessWidget {
  const SizeItem({super.key, required this.size});

  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConstante.kTextColorPrimary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(50),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
        child: Text(
          size,
          style: const TextStyle(
            color: AppConstante.kTextColorPrimary,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
