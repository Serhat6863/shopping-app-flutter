import 'package:flutter/material.dart';

class InstagramGallery extends StatelessWidget {
  const InstagramGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 1,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        GalleryImage(imagePath: "assets/images/home/mia.png"),
        GalleryImage(imagePath: "assets/images/home/jihyn.png"),
        GalleryImage(imagePath: "assets/images/home/mia2.png"),
        GalleryImage(imagePath: "assets/images/home/jihyn2.png"),
      ],
    );
  }
}

class GalleryImage extends StatelessWidget {
  const GalleryImage({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {

    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
    );
  }
}
