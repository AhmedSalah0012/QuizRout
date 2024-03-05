import 'package:flutter/material.dart';
import 'package:qroute/screens/news.dart';
import 'package:qroute/screens/workoutApp.dart';

import 'screens/mentalApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true,
          chipTheme: const ChipThemeData(
            showCheckmark: false,
          )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MentalApp.routName ,
      routes: {
        MentalApp.routName:(context)=> MentalApp(),
        WorkoutApp.routName:(context)=> WorkoutApp(),
        News.routName:(context)=> News()
      },
    );
  }
}