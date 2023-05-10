import 'package:flutter/material.dart';
import 'package:trivia_app/widgets/podium_avatar.dart';

class Podium extends StatelessWidget {
  final String profileImage;
  final int rank1;

  const Podium({required this.profileImage, required this.rank1, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: PodiumAvatar(profileImage: profileImage, rank: rank1)),
        Align(
            alignment: Alignment.bottomCenter,
            child: buildRow(profileImage, rank1)),
      ],
    );
  }
}

Widget buildRow(String profileImage, int rank) => Container(
      width: double.infinity,
      color: Colors.black38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Transform.scale(
            scale: 0.7,
            child: PodiumAvatar(profileImage: profileImage, rank: rank),
          ),
          Transform.scale(
            scale: 0.7,
            child: PodiumAvatar(profileImage: profileImage, rank: rank),
          )
        ],
      ),
    );
