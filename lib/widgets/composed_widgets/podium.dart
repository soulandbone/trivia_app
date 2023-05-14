import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/widgets/podium_avatar.dart';
import 'package:trivia_app/widgets/podium_avatar23.dart';

class Podium extends StatelessWidget {
  final String profileImage;
  final int rank1;
  final int rank2;
  final int rank3;

  const Podium(
      {required this.profileImage,
      required this.rank1,
      required this.rank2,
      required this.rank3,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end, //add this line
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PodiumAvatar23(profileImage: profileImage, rank: rank2),
          const Gap(10),
          PodiumAvatar(profileImage: profileImage, rank: rank1),
          const Gap(10),
          PodiumAvatar23(profileImage: profileImage, rank: rank3)
        ],
      ),
    );
  }
}
