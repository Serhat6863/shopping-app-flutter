import 'package:flutter/material.dart';

import '../../../core/constante/app_constante.dart';

class MenuItemTile extends StatelessWidget {
  const MenuItemTile({super.key, required this.text, required this.icon, this.onTap});

  final String text;
  final IconData icon;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: AppConstante.kTextColorPrimary,
            size: 30,
          ),
          const SizedBox(height: 10,),
          Text(
            text.toUpperCase(),
            style: const TextStyle(
              color: AppConstante.kTextColorPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'TenorSans',
            ),
          ),
        ],
      ),
    );
  }
}
