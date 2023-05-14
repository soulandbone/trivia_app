import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/widgets/podium_avatar.dart';
import 'package:trivia_app/widgets/podium_avatar23.dart';

class Podium extends StatelessWidget {
  final String profileImage1;
  final String profileImage2;
  final String profileImage3;
  final int rank1;
  final int rank2;
  final int rank3;

  const Podium(
      {required this.profileImage1,
      required this.profileImage2,
      required this.profileImage3,
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
          PodiumAvatar23(profileImage: profileImage1, rank: rank2),
          const Gap(10),
          PodiumAvatar(profileImage: profileImage2, rank: rank1),
          const Gap(10),
          PodiumAvatar23(profileImage: profileImage3, rank: rank3)
        ],
      ),
    );
  }
}
