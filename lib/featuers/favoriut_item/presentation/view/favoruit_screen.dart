import 'package:bella_app/core/utilies/app_colors.dart';
import 'package:bella_app/core/utilies/app_texts.dart';
import 'package:bella_app/featuers/home/presentation/controller/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/data/model/item_model.dart';

class FavoruitScreen extends StatelessWidget {
  const FavoruitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> favList = Provider.of<HomeProvider>(context).items.where((foodModel) => foodModel.favOrNot==true).toList() ;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 50),
      child: favList.isEmpty? const Center(
        child: Text(
          AppTexts.noItemsAreFav,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      )
          :ListView.builder(
        itemCount: favList.length,
        itemBuilder: (context, index) {
        return Card(
          shadowColor: AppColors.white,
          color: AppColors.white,
          child: ListTile(
            leading: Image.asset(favList[index].image,width: 80,height: 80,),
            title: Text(
                favList[index].title,
              style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            subtitle: Text(
              "${favList[index].price} \$",
              style: TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            trailing: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.orange.withOpacity(0.1),
              child: IconButton(
                onPressed: (){
                  final provider =
                  Provider.of<HomeProvider>(context, listen: false);
                  final originalIndex =
                  provider.items.indexOf(favList[index]);
                  provider.favOrNot(originalIndex);
                },
                icon: Icon(
                  Icons.favorite,
                  color: AppColors.orange,
                ),
              ),
            ),
            ),
        );
      },),
    );
  }
}

