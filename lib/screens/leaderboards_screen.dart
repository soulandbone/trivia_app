import 'package:flutter/material.dart';

import '../widgets/composed_widgets/switch_three.dart';

class LeaderBoardsScreen extends StatelessWidget {
  const LeaderBoardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Leaderboards')),
        body: const SwitchThree());
  }
}
