import 'package:flutter/material.dart';
import 'package:hnm_app/models/category_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.item,
  });

  final CategoryModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: CircleAvatar(
          radius: 32,
          backgroundImage: AssetImage(
            item.image,
          ),
        ),
        title: Text(
          item.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
