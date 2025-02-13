import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping/core/constante/app_constante.dart';
import 'package:shopping/core/widget/main_app_bar.dart';
import 'package:shopping/core/widget/my_divider.dart';
import 'package:shopping/core/widget/my_drawer.dart';
import 'package:shopping/core/widget/social_icon.dart';
import 'package:shopping/features/category/widget/size_item.dart';

import '../../../core/widget/contact_text.dart';

enum ViewType {
  grid,
  list,
  compact
}


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});



  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {


  final List<Map<String, String>> categories = [
    {
      "image" : "assets/images/category/category1.png",
      "title" :"21WN",
      "subtitle" : "Reversible angora cardigan",
      "price" : "120"
    },
    {
      "image" : "assets/images/category/category2.png",
      "title" :"lamerei",
      "subtitle" : "Reversible angora cardigan",
      "price" : "120"
    },
    {
      "image" : "assets/images/category/category3.png",
      "title" :"21WN",
      "subtitle" : "Reversible angora cardigan",
      "price" : "120"
    },
    {
      "image" : "assets/images/category/category4.png",
      "title" :"lamerei",
      "subtitle" : "Reversible angora cardigan",
      "price" : "120"
    },
    {
      "image" : "assets/images/category/category5.png",
      "title" :"21WN",
      "subtitle" : "Reversible angora cardigan",
      "price" : "120"
    },
    {
      "image" : "assets/images/category/category1.png",
      "title" :"21WN",
      "subtitle" : "Reversible angora cardigan",
      "price" : "120"
    },
    {
      "image" : "assets/images/category/category2.png",
      "title" :"lamerei",
      "subtitle" : "Reversible angora cardigan",
      "price" : "120"
    },
    {
      "image" : "assets/images/category/category3.png",
      "title" :"21WN",
      "subtitle" : "Reversible angora cardigan",
      "price" : "120"
    },
    {
      "image" : "assets/images/category/category4.png",
      "title" :"lamerei",
      "subtitle" : "Reversible angora cardigan",
      "price" : "120"
    },
    {
      "image" : "assets/images/category/category5.png",
      "title" :"21WN",
      "subtitle" : "Reversible angora cardigan",
      "price" : "120"
    },
  ];

  final List<Map<String, String>> _listfull = [
    {
      "image" : "assets/images/category/grid_full1.png",
      "title" : "mohan",
      "subtitle" : "Recycle Boucle Knit Cardigan Pink",
      "price" : "120",
    },
    {
      "image" : "assets/images/category/grid_full2.png",
      "title" : "mohan",
      "subtitle" : "Recycle Boucle Knit Cardigan Pink",
      "price" : "120",
    },
    {
      "image" : "assets/images/category/grid_full3.png",
      "title" : "mohan",
      "subtitle" : "Recycle Boucle Knit Cardigan Pink",
      "price" : "120",
    },
    {
      "image" : "assets/images/category/grid_full4.png",
      "title" : "mohan",
      "subtitle" : "Recycle Boucle Knit Cardigan Pink",
      "price" : "120",
    },
    {
      "image" : "assets/images/category/grid_full5.png",
      "title" : "mohan",
      "subtitle" : "Recycle Boucle Knit Cardigan Pink",
      "price" : "120",
    },
  ];




  bool islike = false;

  ViewType currentView = ViewType.grid;

  
  void _showFullScreenImage(String imagePath, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
            child: Stack(
              fit: StackFit.expand,
              children: [
                InteractiveViewer(
                  minScale: 0.5,
                  maxScale: 4,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                          (index) => Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      useSafeArea: false,
    );
  }

  Widget _buildGrid() {
    return GridView.builder(
      itemCount: categories.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.5
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: const BoxDecoration(
            color: AppConstante.kBackgroundColor,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () => _showFullScreenImage(categories[index]["image"]!, context),
                    child: Image.asset(categories[index]["image"]!),
                  ),
                  const Positioned(
                    right: 10,
                    bottom: 10,
                    child: Icon(
                      FontAwesomeIcons.heart,
                      color: AppConstante.kTextColorImportante,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Text(
                categories[index]["title"]!,
                style: const TextStyle(
                  color: AppConstante.kTextColorPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                categories[index]["subtitle"]!,
                style: const TextStyle(
                  color: AppConstante.kTextColorPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                "\$${categories[index]["price"]!}",
                style: const TextStyle(
                  color: AppConstante.kTextColorImportante,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: categories.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => _showFullScreenImage(categories[index]["image"]!, context),
                child: ClipRRect(
                  child: Image.asset(
                    categories[index]["image"]!,
                    height: 150,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${categories[index]["title"]}".toUpperCase(),
                      style: const TextStyle(
                        color: AppConstante.kTextColorPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "${categories[index]["subtitle"]}",
                      style: const TextStyle(
                        color: AppConstante.kTextColorPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "\$${categories[index]["price"]}",
                      style: const TextStyle(
                        color: AppConstante.kTextColorImportante,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Row(
                      children: [
                        FaIcon(FontAwesomeIcons.star, color: AppConstante.kTextColorImportante,),
                        Text(
                          "4.8 Raitings",
                          style: TextStyle(
                            color: AppConstante.kTextColorPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Text(
                          "Size",
                          style: TextStyle(
                            color: AppConstante.kTextColorPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10,),
                        SizeItem(size: "S"),
                        SizedBox(width: 5,),
                        SizeItem(size: "M"),
                        SizedBox(width: 5,),
                        SizeItem(size: "L"),
                        Spacer(),
                        FaIcon(
                          FontAwesomeIcons.heart,
                          color: AppConstante.kTextColorImportante,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _buildGridFull() {
    return ListView.builder(
      itemCount: _listfull.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () => _showFullScreenImage(_listfull[index]["image"]!, context),
                    child: ClipRRect(
                      child: Image.asset(
                        _listfull[index]["image"]!,
                        height: 500,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          islike = !islike;
                        });
                      },
                      icon: FaIcon(
                        islike ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
                        color: AppConstante.kTextColorImportante,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Text(
                _listfull[index]["title"]!.toUpperCase(),
                style: const TextStyle(
                  color: AppConstante.kTextColorPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Text(
                    _listfull[index]["subtitle"]!,
                    style: const TextStyle(
                      color: AppConstante.kTextColorPrimary,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$${_listfull[index]["price"]!}",
                    style: const TextStyle(
                      color: AppConstante.kTextColorImportante,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      backgroundColor: AppConstante.kBackgroundColor,
      drawer: const MyDrawer(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "4500 apparel".toUpperCase(),
                    style: const TextStyle(
                      color: AppConstante.kTextColorPrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const Spacer(),

                  const Text(
                    "New",
                    style: TextStyle(
                      color: AppConstante.kTextColorPrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const Icon(Icons.arrow_drop_down, color: AppConstante.kTextColorPrimary, size: 20,),

                  IconButton(
                    onPressed: (){
                      setState(() {
                        currentView = ViewType.values[(currentView.index + 1) % ViewType.values.length];
                      });
                    },
                    icon: Icon(
                      currentView == ViewType.grid
                      ? Icons.grid_view : currentView == ViewType.list ? Icons.list : Icons.view_agenda,
                      color: AppConstante.kTextColorPrimary,
                      size: 20,
                    ),
                  ),

                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.more_vert, color: AppConstante.kTextColorPrimary, size: 20,),
                  ),
                ],
              ),

              const SizedBox(height: 20,),


              currentView == ViewType.grid ? _buildGrid() : currentView == ViewType.list ? _buildList() : _buildGridFull(),

              const SizedBox(height: 50,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: const Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ...List<Widget>.generate(4, (index) =>
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        color: Colors.grey[200],
                        alignment: Alignment.center,
                        child: Text(
                          "${index + 2}",
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.chevron_right),
                    onPressed: () {},
                  ),
                ],
              ),

              const SizedBox(height: 20,),


              const SocialIcon(),

              const SizedBox(height: 20,),

              const MyDivider(),

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
      ),
    );
  }
}
