import 'package:bella_app/core/utilies/app_colors.dart';
import 'package:bella_app/core/utilies/app_images.dart';
import 'package:bella_app/core/utilies/app_texts.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

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
              Image.asset(AppImages.burger,width: 96,height: 96,),
              const SizedBox(height: 10,),
              Text(
                AppTexts.beafBurger,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 14,),
              Text(
                "7.5 \$",
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
              onPressed: (){},
              icon: Icon(Icons.favorite_border_outlined,color: AppColors.orange,),
            ),
          ),
        )
      ],
    );
  }
}
