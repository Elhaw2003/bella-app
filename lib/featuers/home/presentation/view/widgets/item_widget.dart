import 'package:bella_app/core/utilies/app_colors.dart';
import 'package:bella_app/featuers/home/presentation/controller/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      // clipBehavior: Clip.none, // Allows the CircleAvatar to overflow outside the Container
      // fit: StackFit.expand, // expand for children in stack
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Provider.of<HomeProvider>(context).items[index].image,width: 80,height: 80,),
              const SizedBox(height: 10,),
              Text(
                Provider.of<HomeProvider>(context).items[index].title,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 14,),
              Text(
                "${Provider.of<HomeProvider>(context).items[index].price} \$",
                style: TextStyle(
                  color: AppColors.orange,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 6),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.orange.withOpacity(0.1),
            child: IconButton(
              onPressed: (){
                Provider.of<HomeProvider>(context,listen: false).favOrNot(index);
              },
              icon: Icon(
                Provider.of<HomeProvider>(context,listen: false).items[index].favOrNot == false?Icons.favorite_border_outlined
                    :Icons.favorite,

                color: AppColors.orange,
              ),
            ),
          ),
        )
      ],
    );
  }
}
