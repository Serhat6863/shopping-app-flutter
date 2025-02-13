import 'package:flutter/material.dart';
import 'package:shopping/features/auth/screen/sign_in_register_screen.dart';
import 'package:shopping/features/blog/screen/blog_post_screen.dart';
import 'package:shopping/features/collection/screen/collection_screen.dart';
import 'package:shopping/features/home/screen/home_screen.dart';

import 'features/blog/screen/blog_list_screen.dart';
import 'features/cart/screen/cart_screen.dart';
import 'features/category/screen/category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SignInRegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/blog': (context) => const BlogListScreen(),
        '/blog/post': (context) => const BlogPostScreen(),
        '/cart': (context) => const CartScreen(),
        '/category': (context) => const CategoryScreen(),
        '/collection': (context) => const CollectionScreen(),
      },
    );
  }
}
