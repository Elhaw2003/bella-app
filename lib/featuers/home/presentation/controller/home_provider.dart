import 'package:bella_app/core/data/model/item_model.dart';
import 'package:bella_app/core/utilies/app_images.dart';
import 'package:bella_app/core/utilies/app_texts.dart';
import 'package:flutter/widgets.dart';

class HomeProvider extends ChangeNotifier{

  List<ItemModel> items = [

    ItemModel(image: AppImages.burger, title: AppTexts.beafBurger, price: 7.5),
    ItemModel(image: AppImages.spicyShrimp, title: AppTexts.spicyShrimp, price: 9.5),
    ItemModel(image: AppImages.crizpyZinger, title: AppTexts.crispyZinger, price: 5.5),
    ItemModel(image: AppImages.meatShawerma, title: AppTexts.meatShawerma, price: 6.5),
    ItemModel(image: AppImages.pizza, title: AppTexts.pizza, price: 4.5),

  ];

  favOrNot(index){

    items[index].favOrNot = ! items[index].favOrNot;
    notifyListeners();
  }

}