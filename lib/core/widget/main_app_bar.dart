import 'package:flutter/material.dart';
import 'package:shopping/core/constante/app_constante.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppConstante.kBackgroundColor,
      title: Image.asset(
        "assets/images/hifashion.png",
        height: 21.83,
        width: 129.63,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.magnifyingGlass, size: 24,),
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/cart'),
          icon: const FaIcon(FontAwesomeIcons.bagShopping, size: 24,),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
