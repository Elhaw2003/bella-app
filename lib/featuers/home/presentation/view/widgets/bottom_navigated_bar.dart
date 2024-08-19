import 'package:bella_app/core/utilies/app_colors.dart';
import 'package:bella_app/core/utilies/app_texts.dart';
import 'package:flutter/material.dart';

class BottomNavigatedBar extends StatelessWidget {
  const BottomNavigatedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.white,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: AppTexts.home
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: AppTexts.Favorite
        ),
      ],
    );
  }
}
