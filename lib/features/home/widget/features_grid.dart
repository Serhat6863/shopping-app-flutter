import 'package:flutter/material.dart';

import '../../../core/constante/app_constante.dart';

class FeaturesGrid extends StatelessWidget {
  const FeaturesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 1.5,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Column(
          children: [
            Image.asset(
              "assets/images/home/logo4.png",
              height: 50,
            ),

            const SizedBox(height: 10,),

            const Text(
              "Fast shipping. Free on",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              "orders over \$25",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        Column(
          children: [
            Image.asset(
              "assets/images/home/logo3.png",
              height: 50,
            ),

            const SizedBox(height: 10,),

            const Text(
              "Sustainable process",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              "from start to finish",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        Column(
          children: [
            Image.asset(
              "assets/images/home/logo2.png",
              height: 50,
            ),

            const SizedBox(height: 10,),

            const Text(
              "Unique designs",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              "and high quality materials",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        Column(
          children: [
            Image.asset(
              "assets/images/home/logo1.png",
              height: 50,
            ),

            const SizedBox(height: 10,),

            const Text(
              "Fast shipping. Free on",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              "orders over \$25",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
