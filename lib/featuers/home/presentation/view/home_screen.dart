import 'package:bella_app/core/utilies/app_colors.dart';
import 'package:bella_app/core/utilies/app_images.dart';
import 'package:bella_app/core/utilies/app_texts.dart';
import 'package:bella_app/featuers/home/presentation/view/widgets/abbpar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenWhite,
      appBar: AppBar(
        flexibleSpace: AbbparWidget(),
      ),
      drawer: Drawer(),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child:
              Container(child: Image.asset(AppImages.image_home,fit: BoxFit.cover,)),
            ),
            // SizedBox(height: 24,),
            SliverGrid.builder(
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // mainAxisExtent: 16,
                // crossAxisSpacing: 16
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: Column(
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
                );
              },
            )
          ],
            ),
      ),
    );
  }
}
