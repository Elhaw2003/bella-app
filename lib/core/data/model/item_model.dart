import 'package:hive/hive.dart';

part 'item_model.g.dart';

@HiveType(typeId: 1)
class ItemModel {
  @HiveField(0)
  String image;
  @HiveField(1)
  String title;
  @HiveField(2)
  double price;
  @HiveField(3)
  bool favOrNot;

  ItemModel({
    required this.image,
    required this.title,
    required this.price,
    this.favOrNot = false,
  });
}