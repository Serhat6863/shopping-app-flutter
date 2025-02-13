import 'package:flutter/material.dart';

import '../../../core/constante/app_constante.dart';

class MenuHorizontal extends StatelessWidget {
  const MenuHorizontal({super.key});

  static const List<String> menuItems = [
    "Fashion",
    "Promo",
    "Policy",
    "Lookbook",
    "Sale",
  ];
  @override



  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuItems.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Text(
                menuItems[index],
                style: const TextStyle(
                  color: AppConstante.kTextColorPrimary,
                  fontSize: 16,
                  fontFamily: 'TenorSans',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
