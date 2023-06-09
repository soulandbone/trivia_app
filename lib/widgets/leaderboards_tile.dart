import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trivia_app/utils/app_styles.dart';

import 'package:trivia_app/widgets/custom_leading.dart';

class LeaderBoardsTile extends StatelessWidget {
  final int rank;
  final String userName;
  final String imageUrl;
  final int score;

  const LeaderBoardsTile(
      {required this.rank,
      required this.userName,
      required this.imageUrl,
      required this.score,
      super.key});

  @override
  Widget build(BuildContext context) {
    String output = NumberFormat.decimalPattern().format(score);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      color: Colors.transparent,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: AppStyles.bgColor,
        leading: CustomLeading(rank: rank, imageUrl: imageUrl),
        title: Text(
          userName,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: Text(
          output,
          style: const TextStyle(color: AppStyles.turquoise),
        ),
      ),
    );
  }
}
