import 'package:flutter/material.dart';
import 'package:shopping/core/constante/app_constante.dart';
import 'package:shopping/core/widget/contact_text.dart';
import 'package:shopping/core/widget/main_app_bar.dart';
import 'package:shopping/core/widget/my_drawer.dart';
import 'package:shopping/core/widget/social_icon.dart';
import 'package:shopping/features/home/widget/brand_section.dart';
import 'package:shopping/core/widget/explore_button.dart';
import 'package:shopping/features/home/widget/features_grid.dart';
import 'package:shopping/features/home/widget/home_carousel_slider.dart';
import 'package:shopping/features/home/widget/instagram_gallery.dart';
import 'package:shopping/features/home/widget/new_arrivals_section.dart';

import '../../../core/widget/my_divider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, String>> _justForYou = [
    {
      "images" : "assets/images/home/justForYou1.png",
      "name": "Harris Tweed Three Button",
      "price": "150",
    },
    {
      "images" : "assets/images/home/justForYou2.png",
      "name": "Harris Tweed Three Button",
      "price": "150",
    },
    {
      "images" : "assets/images/home/justForYou2.png",
      "name": "Harris Tweed Three Button",
      "price": "150",
    },
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstante.kBackgroundColor,
      appBar: const MainAppBar(
        backgroundColor: AppConstante.kBackgroundColor,
        iconColor: AppConstante.kTextColorPrimary,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            HomeCarouselSlider(
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              currentIndex: _current,
            ),


            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: NewArrivalsSection(),
            ),




            const ExploreButton(
              text: "Explore",
              icon: Icons.arrow_forward_ios,
            ),

            const SizedBox(height: 24),

            const MyDivider(),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: BrandSection(),
            ),


            const SizedBox(height: 24),

            const MyDivider(),

            const SizedBox(height: 24),


            const Text(
              "COLLECTIONS",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontFamily: 'TenorSans',
              ),
            ),

            const SizedBox(height: 24),


            Image.asset(
              "assets/images/home/collection1.png",
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.all(55.0),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/home/collection2.png",
                    fit: BoxFit.cover,
                  ),
                  const Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Text(
                          'Autumn',
                          style: TextStyle(
                            fontFamily: 'TenorSans',
                            fontSize: 28,
                            fontStyle: FontStyle.italic,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          'COLLECTION',
                          style: TextStyle(
                            fontFamily: 'TenorSans',
                            fontSize: 14,
                            letterSpacing: 4,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Image.asset(
              "assets/images/home/video.png",
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 24),

            const Text(
              "JUST FOR YOU",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontFamily: 'TenorSans',
              ),
            ),

            const SizedBox(height: 24,),

            const MyDivider(),

            const SizedBox(height: 24),


            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _justForYou.length,
                itemBuilder: (context, index) {
                  final item = _justForYou[index];
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: AppConstante.kBackgroundColor,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            item["images"] ?? "assets/images/placeholder.png",
                            height: MediaQuery.of(context).size.height * 0.8,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              item["name"] ?? "Nom indisponible",
                              style: const TextStyle(
                                color: AppConstante.kTextColorPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Text(
                            "\$${item["price"] ?? "0.00"}",
                            style: const TextStyle(
                              color: AppConstante.kTextColorImportante,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20,),

            const Text(
              "@TRENDING",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 4,
                fontFamily: 'TenorSans',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                spacing: 8, // espace horizontal entre les tags
                runSpacing: 8, // espace vertical entre les lignes
                children: [
                  "#2021",
                  "#spring",
                  "#collection",
                  "#fall",
                  "#dress",
                  "#autumncollection",
                  "#openfashion",
                ].map((tag) => Text(
                  tag,
                  style: const TextStyle(
                    color: AppConstante.kTextColorPrimary,
                    fontSize: 16,
                    letterSpacing: 1,
                    fontFamily: 'TenorSans',
                    fontWeight: FontWeight.w400,
                  ),
                )).toList(),
              ),
            ),

            const SizedBox(height: 55 ,),

            Image.asset(
              "assets/images/hifashion.png",
              height: 21.83,
            ),

            const SizedBox(height: 15,),

            const Text(
              "Making a luxurious lifestyle accessible",
              style: TextStyle(
                color: AppConstante.kTextgraySecond,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 5,),

            const Text(
              "for a generous group of women is our daily drive.",
              style: TextStyle(
                color: AppConstante.kTextgraySecond,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 5,),

            const Text(
              "daily drive.",
              style: TextStyle(
                color: AppConstante.kTextgraySecond,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 15,),

            const MyDivider(),


            const SizedBox(height: 15,),

            const FeaturesGrid(),

            const SizedBox(height: 15,),

            Image.asset(
              "assets/images/home/logo5.png",
              height: 50,
            ),


            const SizedBox(height: 55,),

            const Text(
              "FOLLOW US",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 24,
                fontWeight: FontWeight.w400,
                letterSpacing: 4,
              ),
            ),

            Image.asset(
              "assets/images/home/instagram.png",
              height: 20,
            ),


            const SizedBox(height: 20,),

            const InstagramGallery(),


            const SizedBox(height: 55,),

            //social media icons twitter instagram youtube

            const SocialIcon(),


            const SizedBox(height: 25),

            const MyDivider(),

            const SizedBox(height: 25,),

            const ContactText(text: "Support@Hifashion.com",),

            const ContactText(text: "+60 825 876",),

            const ContactText(text: "08:00 - 22.00 - Everyday"),

            const SizedBox(height: 55,),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                //about Contact Blog
                ContactText(text: "About Us",),

                ContactText(text: "Contact"),

                ContactText(text: "Blog"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

