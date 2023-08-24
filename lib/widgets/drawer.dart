import 'package:flutter/material.dart';
import 'package:hnm_app/models/category_model.dart';
import 'package:hnm_app/widgets/drawer_item.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    super.key,
    required this.category,
  });

  final List<CategoryModel> category;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            const ListTile(
              leading: SizedBox(
                width: 70,
                height: 70,
                child: Image(
                  image: AssetImage(
                    'assets/images/hnm-logo.png',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: category.length,
              itemBuilder: (context, index) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DrawerItem(item: category[index]),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
