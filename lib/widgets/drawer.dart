import 'package:flutter/material.dart';
import 'package:hnm_app/models/category_model.dart';
import 'package:hnm_app/widgets/drawer_item.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    super.key,
    required this.category,
    required this.sumfunc,
  });

  final List<CategoryModel> category;
  final void Function() sumfunc;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: SizedBox(
                width: 70,
                height: 70,
                child: InkWell(
                  onTap: sumfunc,
                  child: const Image(
                    image: AssetImage(
                      'assets/images/hnm-logo.png',
                    ),
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
