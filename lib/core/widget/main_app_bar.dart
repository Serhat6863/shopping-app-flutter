import 'package:flutter/material.dart';
import 'package:shopping/core/constante/app_constante.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, required this.backgroundColor, required this.iconColor});

  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {

    final String logoPath = backgroundColor == AppConstante.kBackgroundColor
    ? "assets/images/hifashion.png"
    : "assets/images/hifashion_white.png";

    return AppBar(
      backgroundColor: backgroundColor,
      title: Image.asset(
        logoPath,
        height: 21.83,
        width: 129.63,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon:  FaIcon(FontAwesomeIcons.magnifyingGlass, size: 24, color: iconColor,),
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/cart'),
          icon: FaIcon(FontAwesomeIcons.bagShopping, size: 24, color: iconColor,),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
