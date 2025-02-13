import 'package:flutter/material.dart';
import 'package:shopping/core/constante/app_constante.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // En-tête du drawer avec image
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

          // Liste des items du menu
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
              Navigator.pop(context); // Ferme le drawer
              Navigator.pushNamed(context, '/home');
            },
          ),

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
              Navigator.pop(context); // Ferme le drawer
              Navigator.pushNamed(context, '/blog');
            },
          ),


          ListTile(
            leading: const Icon(
              Icons.article,
              color: AppConstante.kTextColorPrimary,
            ),
            title: const Text(
              'Blog - post',
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontFamily: 'TenorSans',
              ),
            ),
            onTap: () {
              Navigator.pop(context); // Ferme le drawer
              Navigator.pushNamed(context, '/blog/post');
            },
          ),


          ListTile(
            leading: const Icon(
              Icons.shopping_cart,
              color: AppConstante.kTextColorPrimary,
            ),
            title: const Text(
              'category',
              style: TextStyle(
                color: AppConstante.kTextColorPrimary,
                fontSize: 16,
                fontFamily: 'TenorSans',
              ),
            ),
            onTap: () {
              Navigator.pop(context); // Ferme le drawer
              Navigator.pushNamed(context, '/category');
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
