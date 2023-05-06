import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/widgets/custom_leading.dart';

class LeaderBoardsTile extends StatelessWidget {
  final int rank;
  final String userName;
  final String imageUrl;

  const LeaderBoardsTile(
      {required this.rank,
      required this.userName,
      required this.imageUrl,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      color: Colors.amber,
      child: Card(
        child: ListTile(
          tileColor: Colors.red,
          leading: CustomLeading(rank: rank, imageUrl: imageUrl),
          title: Text(userName),
        ),
      ),
    );
  }
}
