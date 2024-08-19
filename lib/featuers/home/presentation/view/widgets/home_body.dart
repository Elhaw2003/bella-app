import 'package:bella_app/core/utilies/app_colors.dart';
import 'package:bella_app/core/utilies/app_images.dart';
import 'package:bella_app/core/utilies/app_texts.dart';
import 'package:bella_app/featuers/home/presentation/controller/home_provider.dart';
import 'package:bella_app/featuers/home/presentation/view/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child:
            SizedBox(height: 36,)
          ),
          SliverToBoxAdapter(
            child:
            Container(child: Image.asset(AppImages.image_home,fit: BoxFit.cover,)),
          ),
          const SliverToBoxAdapter(
            child:
              SizedBox(height: 24,),
          ),
          SliverGrid.builder(
            itemCount: Provider.of<HomeProvider>(context).items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16.0, // Vertical spacing between items
              crossAxisSpacing: 16.0, // Horizontal spacing between items
              childAspectRatio: 1.0,
            ),
            itemBuilder: (context, index) {
              return ItemWidget(
                index: index,
              );
            },
          )
        ],
      ),
    );
  }
}
