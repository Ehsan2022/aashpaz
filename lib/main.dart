// ignore_for_file: constant_identifier_names

import 'package:aashpaz/data/class.dart';
import 'package:aashpaz/navigator.dart';
import 'package:aashpaz/screens/about.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:hive_flutter/adapters.dart';

const String RecipeBok = "favorites";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(RecipeAdapter());
  await Hive.openBox<Recipe>(RecipeBok);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyApp(),
      home: const Directionality(
        // add this
        textDirection: TextDirection.rtl, // set this property
        child: Directionality(
          // add this
          textDirection: TextDirection.rtl, // set this property
          child: Navigation(),
        ),
      ),
      routes: {
        'about': (_) => const About(),
      },
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        centered: true,
        splashIconSize: 180,
        animationDuration: const Duration(seconds: 4),
        backgroundColor: Colors.black,
        splash: Column(
          children: [
            const Icon(
          Icons.fastfood_outlined,
          size: 100,
          color: Colors.white,
          ),
          SizedBox(height: 10,),
          Text("آشپـــــــــــــز",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)
          ],
        ),
        duration: 4000,
        nextScreen: const Directionality(
        // add this
        textDirection: TextDirection.rtl, // set this property
        child: Directionality(
          // add this
          textDirection: TextDirection.rtl, // set this property
          child: Navigation(),
        ),
      ),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
