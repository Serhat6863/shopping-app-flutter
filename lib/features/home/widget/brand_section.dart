import 'package:flutter/material.dart';

class BrandSection extends StatelessWidget {
  const BrandSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/home/prada.png",
              height: 10,
            ),
            Image.asset(
              "assets/images/home/burberry.png",
              height: 10,
            ),
            Image.asset(
              "assets/images/home/boss.png",
              height: 20,
            ),
          ],
        ),

        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/home/cartier.png",
              height: 20,
            ),
            Image.asset(
              "assets/images/home/gucci.png",
              height: 10,
            ),
            Image.asset(
              "assets/images/home/tiffany.png",
              height: 10,
            ),
          ],
        ),

      ],
    );
  }
}
