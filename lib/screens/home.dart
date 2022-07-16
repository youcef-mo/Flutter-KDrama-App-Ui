import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:k_drama_app/constant/them.dart';
import 'package:k_drama_app/models/movies.dart';
import 'package:k_drama_app/screens/detail_screen.dart';
import 'package:k_drama_app/widgets/appbar.dart';
import 'package:k_drama_app/widgets/tab_button.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:glassmorphism/glassmorphism.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final ValueNotifier<int> _buttonTrigger = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.bg_color,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: SafeArea(
          child: TopBar(),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: buildTextFiled(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(onPressed: () {}, child: const Text('see more'))
                  ],
                ).padding(horizontal: 10, vertical: 10),
                SizedBox(
                  height: 30,
                  child: categoriesList(),
                ).padding(left: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Popular Drama',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'see more',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ).padding(horizontal: 10, vertical: 10),
                SizedBox(
                  height: 250,
                  child: dramaList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'New Episode',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'see more',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ).padding(horizontal: 10, vertical: 10),
                SizedBox(
                  height: 250,
                  child: dramaList(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: buildBottomBar(),
          )
        ],
      ),
    );
  }

  Widget buildTextFiled() {
    return const TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            IconlyLight.search,
            color: Colors.white70,
          ),
          border: InputBorder.none,
          label: Text(
            'Search Drama ',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          suffixIcon: Icon(
            IconlyBold.filter_2,
            color: Colors.white70,
          )),
    )
        .decorated(
          color: LightColors.greyColor,
          borderRadius: BorderRadius.circular(30),
        )
        .height(60)
        .width(350);
  }

  Widget categoriesList() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return TabButton(
            notifier: _buttonTrigger,
            buttonText: categories[index]['text'],
            itemIndex: index,
            buttonIcon: categories[index]['icon'],
          );
        });
  }

  Widget dramaTiel(Movie drama) {
    return ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            child: Image.asset(drama.poster))
        .padding(horizontal: 8)
        .height(250)
        .gestures(onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => DetailPage(drama: drama)),
      );
    }).elevation(8);
  }

  Widget dramaList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) => dramaTiel(movies[index]),
    );
  }

  Widget buildBottomBar() {
    return GlassmorphicContainer(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
      width: MediaQuery.of(context).size.width * .8,
      blur: 20,
      border: 0,
      borderGradient: LinearGradient(colors: [
        LightColors.bg_color.withOpacity(.5),
        LightColors.greyColor.withOpacity(.4),
      ]),
      borderRadius: 35,
      linearGradient: LinearGradient(colors: [
        LightColors.bg_color.withOpacity(.6),
        LightColors.greyColor.withOpacity(.5),
      ]),
      height: 65,
      child: [
        IconButton(
          color: selectedIndex == 0 ? LightColors.pink_color : Colors.white,
          onPressed: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          icon: Icon(selectedIndex == 0 ? IconlyBold.home : IconlyBroken.home),
        ),
        IconButton(
          color: selectedIndex == 1 ? LightColors.pink_color : Colors.white,
          onPressed: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          icon: Icon(
              selectedIndex == 1 ? IconlyBold.category : IconlyBroken.category),
        ),
        IconButton(
          color: selectedIndex == 2 ? LightColors.pink_color : Colors.white,
          onPressed: () {
            setState(() {
              selectedIndex = 2;
            });
          },
          icon: Icon(
              selectedIndex == 2 ? IconlyBold.bookmark : IconlyBroken.bookmark),
        ),
        IconButton(
          color: selectedIndex == 3 ? LightColors.pink_color : Colors.white,
          onPressed: () {
            setState(() {
              selectedIndex = 3;
            });
          },
          icon: Icon(
              selectedIndex == 3 ? IconlyBold.profile : IconlyBroken.profile),
        ),
      ].toRow(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
    );
  }
}
