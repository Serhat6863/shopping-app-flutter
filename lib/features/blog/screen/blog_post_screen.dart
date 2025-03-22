import 'package:flutter/material.dart';
import 'package:shopping/core/constante/app_constante.dart';
import 'package:shopping/core/widget/contact_text.dart';
import 'package:shopping/core/widget/main_app_bar.dart';
import 'package:shopping/core/widget/my_divider.dart';
import 'package:shopping/core/widget/social_icon.dart';

import '../../../core/widget/my_drawer.dart';

class BlogPostScreen extends StatefulWidget {
  const BlogPostScreen({super.key});

  @override
  State<BlogPostScreen> createState() => _BlogPostScreenState();
}

class _BlogPostScreenState extends State<BlogPostScreen> {

  final String content = """You guys know how much I love mixing high and low-end – it’s the best way to get the most bang for your buck while still elevating your wardrobe.The same goes for handbags! And honestly they are probably the best pieces to mix and match. I truly think the key to completing a look is with a great bag and I found so many this year that I wanted to share a round-up of my most worn handbags. """;

  final String content2 = """this summer and immediately fell in love. The neutral fabrics are so beautiful and I like how this handbag can also carry into fall. The mini Fendi bucket bag with the sheer fabric is so fun and such a statement bag. Also this DeMellier off white bag is so cute to carry to a dinner with you or going out, it’s small but not too small to fit your phone and keys still. """;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        backgroundColor: AppConstante.kBackgroundColor,
        iconColor: AppConstante.kTextColorPrimary,
      ),
      backgroundColor: AppConstante.kBackgroundColor,
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/blog/blog_post.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    "2021 style guide: the bigest fall trends".toUpperCase(),
                    style: const TextStyle(
                      color: AppConstante.kTextColorPrimary,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'TenorSans',
                    ),
                    maxLines: 2,
                  ),

                  const SizedBox(height: 10),

                  Text(
                    content,
                    style: const TextStyle(
                      color: AppConstante.kTextColorPrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'TenorSans',
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),

                  const SizedBox(height: 24,),

                  Image.asset(
                    "assets/images/blog/blog_post2.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 20,),


                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: const TextStyle(
                        color: AppConstante.kTextColorPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'TenorSans',
                        height: 1.5,
                      ),
                      children: [
                        const TextSpan(text: "i found this",),
                        TextSpan(
                          text: " Saint Laurent canvas handbag ",
                          style: TextStyle(
                            color: AppConstante.kTextColorImportante,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(text: content2),
                      ]
                    ),
                  ),

                ],
              ),
            ),


            const SizedBox(height: 20),

            const SocialIcon(),

            const SizedBox(height: 20),

            const MyDivider(),

            const SizedBox(height: 20),

            const ContactText(text: "Support@HiFashion.com"),
            const SizedBox(height: 10),
            const ContactText(text: "+60 825 876"),
            const SizedBox(height: 10),
            const ContactText(text: "08:00 - 22:00 - Everyday"),

            const SizedBox(height: 20),

            const  MyDivider(),

            const SizedBox(height: 20),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContactText(text: "About"),
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
