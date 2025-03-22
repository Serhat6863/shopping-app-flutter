import 'package:flutter/material.dart';
import 'package:shopping/core/widget/social_icon.dart';

import 'contact_text.dart';
import 'my_divider.dart';

class ContactFooter extends StatelessWidget {
  const ContactFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SocialIcon(),
        SizedBox(height: 20),
        MyDivider(),
        SizedBox(height: 15),
        ContactText(text: "Support@Hifashion.com"),
        SizedBox(height: 15),
        ContactText(text: "+60 825 876"),
        SizedBox(height: 15),
        ContactText(text: "08:00 - 22.00 - Everyday"),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ContactText(text: "About Us"),
            ContactText(text: "Contact"),
            ContactText(text: "Blog"),
          ],
        ),
      ],
    );
  }
}