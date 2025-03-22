import 'package:flutter/material.dart';
import 'package:shopping/core/constante/app_constante.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppConstante.kBackgroundColor,
            ),
            child: Center(
              child: Image.asset(
                'assets/images/hifashion.png',
                height: 50,
              ),
            ),
          ),

          // Account
          ListTile(
            leading: const Icon(
              Icons.person,
              color: AppConstante.kTextColorPrimary,
            ),
            title: const Text(
              'Account',
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontFamily: 'TenorSans',
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/account');
            },
          ),

          // Home
          ListTile(
            leading: const Icon(
              Icons.home,
              color: AppConstante.kTextColorPrimary,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontFamily: 'TenorSans',
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/home');
            },
          ),

          // Blog
          ListTile(
            leading: const Icon(
              Icons.article,
              color: AppConstante.kTextColorPrimary,
            ),
            title: const Text(
              'Blog',
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontFamily: 'TenorSans',
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/blog');
            },
          ),

          // Collection
          ListTile(
            leading: const Icon(
              Icons.collections,
              color: AppConstante.kTextColorPrimary,
            ),
            title: const Text(
              'Collection',
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontFamily: 'TenorSans',
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/collection');
            },
          ),

          // Contact Us
          ListTile(
            leading: const Icon(
              Icons.contact_mail,
              color: AppConstante.kTextColorPrimary,
            ),
            title: const Text(
              'Contact Us',
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontFamily: 'TenorSans',
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/contact');
            },
          ),

          // Our Story
          ListTile(
            leading: const Icon(
              Icons.history_edu,
              color: AppConstante.kTextColorPrimary,
            ),
            title: const Text(
              'Our Story',
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontFamily: 'TenorSans',
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/our-story');
            },
          ),

          const Divider(
            color: AppConstante.kTextgraySecond,
          ),
        ],
      ),
    );
  }
}