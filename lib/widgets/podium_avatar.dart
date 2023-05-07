import 'package:flutter/material.dart';

class PodiumAvatar extends StatelessWidget {
  final String profileImage;
  final int
      rank; // if rank is 1, it is different, higher, probably should be at a higher level to make it be in the middle center. Something to consider

  const PodiumAvatar(
      {required this.profileImage, required this.rank, super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 70,
      foregroundImage: AssetImage(profileImage),
    );
  }
}
