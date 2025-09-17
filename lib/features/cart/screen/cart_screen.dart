import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constante/app_constante.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const FaIcon(FontAwesomeIcons.x),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "You don't have any items in your cart",
                style: TextStyle(
                  color: AppConstante.kTextColorPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(
                color: AppConstante.kTextColorPrimary,
              ),
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.bagShopping,
                    color: AppConstante.kBackgroundColor,
                  ),

                  const SizedBox(width: 10,),

                  Text(
                    "Continue Shopping".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
