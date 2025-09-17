import 'package:flutter/material.dart';
import 'package:shopping/core/constante/app_constante.dart';
import 'package:shopping/core/widget/main_app_bar.dart';
import 'package:shopping/core/widget/my_drawer.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF111111),
      appBar: MainAppBar(
        backgroundColor: Color(0xFF111111),
        iconColor: AppConstante.kTextColorSecondary,
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Collection Screen'),
      ),

    );
  }
}
