import 'package:flutter/material.dart';
import 'package:hnm_app/models/category_model.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({
    super.key,
    required this.recdata,
    required this.asd,
  });

  final List<CategoryModel> recdata;
  final void Function() asd;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: ListView.builder(
        itemCount: recdata.length,
        itemBuilder: (context, index) => InkWell(
          onTap: asd,
          child: SizedBox(
            height: width * 0.8,
            width: width * 0.8,
            child: Image.asset(
              recdata[index].bigimg,
            ),
          ),
        ),
      ),
    );
  }
}
