import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomLeading extends StatelessWidget {
  final int rank;
  final String imageUrl;

  const CustomLeading({required this.rank, required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          rank.toString(),
          style: const TextStyle(color: Colors.white),
        ),
        const Gap(14),
        CircleAvatar(
          foregroundImage: AssetImage(imageUrl),
        )
      ],
    );
  }
}
