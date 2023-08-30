import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: ,
      itemBuilder: (context, index) => Container(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                ,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              ,
              style: const TextStyle(fontSize: 15),
            ),
            Text(
              ,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
