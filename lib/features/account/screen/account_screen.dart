import 'package:flutter/material.dart';
import 'package:shopping/core/constante/app_constante.dart';
import 'package:shopping/core/widget/contact_footer.dart';
import 'package:shopping/core/widget/main_app_bar.dart';
import 'package:shopping/core/widget/my_drawer.dart';
import 'package:shopping/features/account/widget/menu_item_tile.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        backgroundColor: AppConstante.kBackgroundColor,
        iconColor: AppConstante.kTextColorPrimary,
      ),
      drawer: const MyDrawer(),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              const SizedBox(height: 20,),
          
              Text(
                "My Account".toUpperCase(),
                style: const TextStyle(
                  color: AppConstante.kTextColorPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'TenorSans',
                ),
              ),
          
              const SizedBox(height: 20,),
          
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                padding: const EdgeInsets.all(16),
                children: [
                  MenuItemTile(
                    text: "settings",
                    icon: Icons.settings,
                    onTap: () => Navigator.pushNamed(context, "/settings"),
                  ),
          
                  //profiles
                  MenuItemTile(
                    text: "profiles",
                    icon: Icons.person,
                    onTap: () => Navigator.pushNamed(context, "/profiles"),
                  ),
          
                  //password
                  MenuItemTile(
                    text: "password",
                    icon: Icons.lock,
                    onTap: () => Navigator.pushNamed(context, "/password"),
                  ),
          
                  //orders
                  MenuItemTile(
                    text: "orders",
                    icon: Icons.shopping_cart,
                    onTap: () => Navigator.pushNamed(context, "/orders"),
                  ),
          
                  //shipping adress
          
          
                  //email notifications
                ],
              ),
          
              const ContactFooter(),
          
            ],
          ),
        ),
      ),
    );
  }
}
