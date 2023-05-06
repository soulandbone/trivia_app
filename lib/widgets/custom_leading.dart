import 'package:flutter/material.dart';

class CustomLeading extends StatelessWidget {
  final int rank;
  final String imageUrl;

  const CustomLeading({required this.rank, required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(rank.toString()),
        CircleAvatar(
          foregroundImage: AssetImage(imageUrl),
        )
      ],
    );
  }
}
