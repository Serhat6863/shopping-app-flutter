import 'package:flutter/material.dart';
import 'package:shopping/core/widget/explore_button.dart';
import 'package:shopping/core/widget/main_app_bar.dart';
import 'package:shopping/core/widget/my_divider.dart';
import 'package:shopping/core/widget/my_drawer.dart';
import 'package:shopping/core/widget/social_icon.dart';
import 'package:shopping/features/blog/widget/menu_horizontal.dart';

import '../../../core/constante/app_constante.dart';
import '../../../core/widget/contact_text.dart';

class BlogListScreen extends StatefulWidget {
  const BlogListScreen({super.key});

  @override
  State<BlogListScreen> createState() => _BlogListScreenState();
}

class _BlogListScreenState extends State<BlogListScreen> {

  final List<Map<String, String>> _listItems = [
    {
      "image": "assets/images/blog/blog1.png",
      "title": "2021 style Guide : the biggest fall",
      "subtitle": "the excitement of fall fashion is here and i'm already loving some of the trend forecasts",
      "date": "4 days ago",
    },
    {
      "image": "assets/images/blog/blog2.png",
      "title": "3 pairs of denim you won't believe",
      "subtitle": "the excitement of fall fashion is here and i'm already loving some of the trend forecasts",
      "date": "5 days ago",
    },
    {
      "image": "assets/images/blog/blog3.png",
      "title": "5 fall looks i'm loving",
      "subtitle": "the excitement of fall fashion is here and i'm already loving some of the trend forecasts",
      "date": "01/11/2021",
    },
    {
      "image": "assets/images/blog/blog4.png",
      "title": "5 fall boot trends you need to try",
      "subtitle": "the excitement of fall fashion is here and i'm already loving some of the trend forecasts",
      "date": "25/10/2021",
    },
    {
      "image": "assets/images/blog/blog5.png",
      "title": "2021 style Guide : the biggest fall",
      "subtitle": "the excitement of fall fashion is here and i'm already loving some of the trend forecasts",
      "date": "16/10/2021",
    },
    {
      "image": "assets/images/blog/blog6.png",
      "title": "3 pairs of denim you won't believe",
      "subtitle": "the excitement of fall fashion is here and i'm already loving some of the trend forecasts",
      "date": "10/10/2021",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstante.kBackgroundColor,
      appBar: const MainAppBar(),
      drawer:  const MyDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 24),

            const Text(
              "BLOG",
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 24,
                fontWeight: FontWeight.w400,
                letterSpacing: 2,
                fontFamily: 'TenorSans',
              ),
            ),

            const SizedBox(height: 10,),

            const MyDivider(),


            const SizedBox(height: 24),

            // Blog list

            const MenuHorizontal(),

            const SizedBox(height: 24),


            ListView.builder(
              itemCount: _listItems.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      ClipRRect(
                        child: Image.asset(
                          _listItems[index]["image"]!,
                          height: 150,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Contenu
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _listItems[index]["title"]?.toUpperCase() ?? "",
                              style: const TextStyle(
                                color: AppConstante.kTextColorPrimary,
                                fontSize: 20,
                                fontFamily: 'TenorSans',
                                fontWeight: FontWeight.w700,
                              ),
                              maxLines: 2,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              _listItems[index]["subtitle"]!,
                              style: const TextStyle(
                                color: AppConstante.kTextgraySecond,
                                fontSize: 16,
                                fontFamily: 'TenorSans',
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),

                            const SizedBox(height: 4),

                            Text(
                              _listItems[index]["date"]!,
                              style: const TextStyle(
                                color: AppConstante.kTextgraySecond,
                                fontSize: 13,
                                fontFamily: 'TenorSans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),


            const SizedBox(height: 24),

            const ExploreButton(
              text: "LOAD MORE",
              //icon plus
              icon: Icons.add,
            ),

            const SizedBox(height: 24),

            const SocialIcon(),

            const MyDivider(),

            const SizedBox(height: 24),

            const ContactText(text: "Support@Hifashion.com",),

            const SizedBox(height: 15,),

            const ContactText(text: "+60 825 876",),

            const SizedBox(height: 15,),

            const ContactText(text: "08:00 - 22.00 - Everyday"),

            const SizedBox(height: 24),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
