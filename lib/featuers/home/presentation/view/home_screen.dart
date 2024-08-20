import 'package:bella_app/core/utilies/app_colors.dart';
import 'package:bella_app/core/utilies/app_fonts.dart';
import 'package:bella_app/core/utilies/app_texts.dart';
import 'package:bella_app/featuers/favoriut_item/presentation/view/favoruit_screen.dart';
import 'package:bella_app/featuers/home/presentation/view/widgets/abbpar_widget.dart';
import 'package:bella_app/featuers/home/presentation/view/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<Widget> homeOrFavScreen = [HomeBody(),FavoruitScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenWhite,
      appBar: AppBar(
        flexibleSpace: AbbparWidget(),
      ),
      drawer: Drawer(),
      body:  homeOrFavScreen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.grey,
        selectedLabelStyle: const TextStyle(
            fontFamily: AppFonts.ReadexProRegular,
            fontSize: 12,
            fontWeight: FontWeight.w400
        ),
        unselectedLabelStyle: const TextStyle(
            fontFamily: AppFonts.ReadexProRegular,
            fontSize: 12,
            fontWeight: FontWeight.w400
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: AppTexts.home,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: AppTexts.Favorite
          ),
        ],
      ),
    );
  }
}
