import 'package:flutter/material.dart';
import 'package:hnm_app/widgets/drawer.dart';
import 'package:hnm_app/models/category_dummy.dart';
import 'package:hnm_app/widgets/homepage_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget screenwidget = HomePageScreen(
      recdata: dummy,
    );

    return Scaffold(
      drawer: NavDrawer(
        category: dummy,
      ),
      appBar: AppBar(
        actions: [
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outline,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
        ],
      ),
      body: screenwidget,
    );
  }
}
