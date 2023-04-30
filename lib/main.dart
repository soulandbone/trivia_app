import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trivia_app/screens/questions_screen.dart';
import 'package:trivia_app/utils/app_styles.dart';

import '../screens/bottom_bar.dart';

void main() {
  runApp(const ProviderScope(child: MyApp())); // Required by RiverPod
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {'/questions-screen': (context) => QuestionsScreen()},
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(color: AppStyles.background),
            scaffoldBackgroundColor: AppStyles.bgColor,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const BottomBar());
  }
}


/*
  Changes to add: Points display, make it look better, progress bar showing how many questions of the total questions have been displayed, last page after all the questions have been done, timer (one of the last implementations to be done)


*/