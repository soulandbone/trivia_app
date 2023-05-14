import 'package:flutter/material.dart';
import 'package:trivia_app/utils/app_styles.dart';

class PodiumAvatar23 extends StatelessWidget {
  final String profileImage;
  final int rank;

  const PodiumAvatar23(
      {required this.profileImage, required this.rank, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90, //original is 90
      width: 70, //original is 70
      decoration: const BoxDecoration(color: Colors.deepPurple),
      child: Stack(children: [
        Positioned(
          top: 10,
          child: CircleAvatar(
            backgroundColor: rank == 2 ? AppStyles.turquoise : Colors.orange,
            radius: 35,
            child: const CircleAvatar(
              foregroundImage: AssetImage(
                'assets/images/profile_1.jpg',
              ),
              radius: 30,
            ),
          ),
        ),
        Positioned(
            left: 22,
            bottom: 2,
            child: CircleAvatar(
              backgroundColor: Colors.amberAccent,
              radius: 14,
              child: Text(rank.toString()),
            )),
      ]),
    );
  }
}
