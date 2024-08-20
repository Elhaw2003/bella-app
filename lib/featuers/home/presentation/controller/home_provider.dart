import 'package:bella_app/core/data/model/item_model.dart';
import 'package:bella_app/core/utilies/app_images.dart';
import 'package:bella_app/core/utilies/app_texts.dart';
import 'package:bella_app/core/utilies/my_hive.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeProvider extends ChangeNotifier{
  var settingsBox = Hive.box<ItemModel>(MyHive.settings);

  List<ItemModel> items = [
    ItemModel(image: AppImages.burger, title: AppTexts.beafBurger, price: 7.5),
    ItemModel(image: AppImages.spicyShrimp, title: AppTexts.spicyShrimp, price: 9.5),
    ItemModel(image: AppImages.crizpyZinger, title: AppTexts.crispyZinger, price: 5.5),
    ItemModel(image: AppImages.meatShawerma, title: AppTexts.meatShawerma, price: 6.5),
    ItemModel(image: AppImages.pizza, title: AppTexts.pizza, price: 4.5),
  ];

  HomeProvider() {
    if (settingsBox.isEmpty) {
      items = [
        ItemModel(image: AppImages.burger, title: AppTexts.beafBurger, price: 7.5),
        ItemModel(image: AppImages.spicyShrimp, title: AppTexts.spicyShrimp, price: 9.5),
        ItemModel(image: AppImages.crizpyZinger, title: AppTexts.crispyZinger, price: 5.5),
        ItemModel(image: AppImages.meatShawerma, title: AppTexts.meatShawerma, price: 6.5),
        ItemModel(image: AppImages.pizza, title: AppTexts.pizza, price: 4.5),
      ];
      for (var item in items) {
        settingsBox.add(item); // Save items to Hive box
      }
    } else {
      items = settingsBox.values.toList(); // Load items from Hive box
    }
  }



  favOrNot(int index){

    items[index].favOrNot = ! items[index].favOrNot;
    settingsBox.putAt(index, items[index]);
    notifyListeners();
  }

}