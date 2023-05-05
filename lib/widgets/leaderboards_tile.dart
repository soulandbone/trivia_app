import 'package:flutter/material.dart';

class LeaderBoardsTile extends StatelessWidget {
  final int rank;
  final String userName;

  const LeaderBoardsTile(
      {required this.rank, required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(rank.toString()),
      title: Text(userName),
    );
  }
}
