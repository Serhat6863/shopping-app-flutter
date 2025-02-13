import 'package:flutter/material.dart';

import '../../../core/constante/app_constante.dart';

class NewArrivalsSection extends StatefulWidget {
  const NewArrivalsSection({super.key});

  @override
  State<NewArrivalsSection> createState() => _NewArrivalsSectionState();
}

class _NewArrivalsSectionState extends State<NewArrivalsSection> {
  final List<Map<String, String>> _gridItems = [
    {
      "image": "assets/images/home/ongoracardigan1.png",
      "price": "150",
      "name": "Ongora Cardigan",
    },
    {
      "image": "assets/images/home/ongoracardigan2.png",
      "price": "150",
      "name": "Ongora Cardigan",
    },
    {
      "image": "assets/images/home/ongoracardigan3.png",
      "price": "150",
      "name": "Ongora Cardigan",
    },
    {
      "image": "assets/images/home/oblongbag.png",
      "price": "150",
      "name": "Oblong Bag",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        const Text(
          "NEW ARRIVALS",
          style: TextStyle(
            color: AppConstante.kTextColorPrimary,
            fontSize: 24,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
            fontFamily: 'TenorSans',
          ),
        ),
        const SizedBox(height: 24),

        _buildCategories(),

        const SizedBox(height: 24),

        _buildProductGrid(),

      ],
    );
  }


  Widget _buildCategories() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("All", style: AppConstante.kTextStyleSubTitle),
        Text("Apparel", style: AppConstante.kTextStyleSubTitle),
        Text("Dress", style: AppConstante.kTextStyleSubTitle),
        Text("Tsirt", style: AppConstante.kTextStyleSubTitle),
        Text("Bag", style: AppConstante.kTextStyleSubTitle),
      ],
    );
  }

  Widget _buildProductGrid(){
    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: _gridItems.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: AppConstante.kBackgroundColor,
          ),
          child: Column(
            children: [
              Image.asset(
                _gridItems[index]["image"] ?? "il ya pas d'image",
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Text(
                _gridItems[index]["name"] ?? "il ya pas de nom",
                style: const TextStyle(
                  color: AppConstante.kTextColorPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "\$${_gridItems[index]["price"]} " ??
                    "il ya pas de prix",
                style: const TextStyle(
                  color: AppConstante.kTextColorImportante,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }


}
