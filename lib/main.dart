import 'package:bella_app/core/utilies/app_fonts.dart';
import 'package:bella_app/featuers/home/presentation/view/home_screen.dart';
import 'package:flutter/material.dart';

main(){
  runApp(BellaApp());
}
class BellaApp extends StatelessWidget {
  const BellaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: AppFonts.roboto
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
