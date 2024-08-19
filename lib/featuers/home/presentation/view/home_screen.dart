import 'package:bella_app/core/utilies/app_colors.dart';
import 'package:bella_app/core/utilies/app_texts.dart';
import 'package:bella_app/featuers/home/presentation/view/widgets/abbpar_widget.dart';
import 'package:bella_app/featuers/home/presentation/view/widgets/bottom_navigated_bar.dart';
import 'package:bella_app/featuers/home/presentation/view/widgets/home_body.dart';
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
      body:  HomeBody(),
      bottomNavigationBar: BottomNavigatedBar(),
    );
  }
}
