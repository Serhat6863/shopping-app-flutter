import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/constante/app_constante.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({super.key, required this.onPageChanged, required this.currentIndex});

  final Function(int) onPageChanged;
  final int currentIndex;

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {


  final List<String> _carrouselImages = [
    "assets/images/home/homeFirst.png",
    "assets/images/home/homeFirst.png",
    "assets/images/home/homeFirst.png",
  ];




  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: _carrouselImages.length,
      itemBuilder: (context, index, realIndex) {
        return Stack(
          children: [
            Image.asset(
              "assets/images/home/homeFirst.png",
              height: 650,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "LUXURY",
                    style: AppConstante.kTextStyleTitle,
                  ),
                  Text(
                    "FASHION",
                    style: AppConstante.kTextStyleTitle,
                  ),
                  Text(
                    "& ACCESSORIES",
                    style: AppConstante.kTextStyleTitle,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 12),
                  decoration: const BoxDecoration(
                    color: AppConstante.kTextColorPrimary,
                  ),
                  child: const Center(
                    child: Text(
                      "EXPLORE COLLECTION",
                      style: TextStyle(
                        color: AppConstante.kTextColorSecondary,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'TenorSans',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _carrouselImages.asMap().entries.map((entry) {
                  return Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.currentIndex == entry.key
                          ? AppConstante.kTextColorPrimary
                          : AppConstante.kTextColorSecondary,
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        );
      },
      options: CarouselOptions(
        height: 650,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        viewportFraction: 1.0,
        onPageChanged: (index, reason) {
          widget.onPageChanged(index);
        },
      ),
    );
  }
}
