class ItemModel {
  String image;
  String title;
  double price;
  bool favOrNot;

  ItemModel({

    required this.image,
    required this.title,
    required this.price,
    this.favOrNot = false,
});

}