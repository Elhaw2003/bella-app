import 'package:bella_app/core/utilies/app_colors.dart';
import 'package:bella_app/core/utilies/app_fonts.dart';
import 'package:bella_app/core/utilies/app_texts.dart';
import 'package:flutter/material.dart';

class AbbparWidget extends StatelessWidget {
  const AbbparWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
          color: AppColors.brwon,
          size: 25,
      ),
      backgroundColor: AppColors.screenWhite,
      centerTitle: true,
      title: Text(
        AppTexts.billa,
        style: TextStyle(
            fontFamily: AppFonts.rye
        ),
      ),
    );
  }
}
