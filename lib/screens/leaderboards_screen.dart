import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trivia_app/utils/app_styles.dart';

class LeaderBoardsScreen extends StatelessWidget {
  const LeaderBoardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Leaderboards')),
      body: const Center(
        child: Text('This is the Leaderboards Screen'),
      ),
    );
  }
}
