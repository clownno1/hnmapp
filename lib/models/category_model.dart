import 'package:hnm_app/models/item_model.dart';

class CategoryModel {
  final String title;
  final String id;
  final String image;
  final String bigimg;
  final List<ItModel> itemlist;

  CategoryModel({
    required this.id,
    required this.title,
    required this.image,
    required this.bigimg,
    required this.itemlist,
  });
}
