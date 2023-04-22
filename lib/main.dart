import 'package:flutter/material.dart';
import 'package:trivia_app/screens/questions_screen.dart';
import 'package:trivia_app/utils/app_styles.dart';

import '../screens/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {'/questions-screen': (context) => const QuestionsScreen()},
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(color: AppStyles.background),
            scaffoldBackgroundColor: AppStyles.bgColor,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const BottomBar());
  }
}
