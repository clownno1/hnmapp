import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => GridTile(
          child: Icon(
            Icons.abc,
          ),
        ),
      ),
    );
  }
}
