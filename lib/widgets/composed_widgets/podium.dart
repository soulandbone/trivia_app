import 'package:flutter/material.dart';
import 'package:trivia_app/widgets/podium_avatar.dart';

class Podium extends StatelessWidget {
  final String profileImage;
  final int rank1;

  const Podium({required this.profileImage, required this.rank1, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end, //add this line
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.scale(
              scale: 0.65,
              child: PodiumAvatar(profileImage: profileImage, rank: rank1)),
          PodiumAvatar(profileImage: profileImage, rank: rank1),
          Transform.scale(
              scale: 0.65,
              child: PodiumAvatar(profileImage: profileImage, rank: rank1)),
        ],
      ),
    );
  }
}
