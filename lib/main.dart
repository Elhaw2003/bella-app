import 'package:bella_app/core/data/model/item_model.dart';
import 'package:bella_app/core/utilies/app_fonts.dart';
import 'package:bella_app/core/utilies/my_hive.dart';
import 'package:bella_app/featuers/home/presentation/controller/home_provider.dart';
import 'package:bella_app/featuers/home/presentation/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

main()  async{
  WidgetsFlutterBinding.ensureInitialized(); //  >> ensure initialized before build
  await Hive.initFlutter();
  Hive.registerAdapter(ItemModelAdapter());
  await Hive.openBox<ItemModel>(MyHive.settings);
  runApp(ChangeNotifierProvider(
    create: (context) => HomeProvider(),
      child: BellaApp()));
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
