import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class PodiumAvatar extends StatelessWidget {
  final String profileImage;
  final int
      rank; // if rank is 1, it is different, higher, probably should be at a higher level to make it be in the middle center. Something to consider

  const PodiumAvatar(
      {required this.profileImage, required this.rank, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Column(children: [
        SvgPicture.asset('assets/images/crown1.svg', height: 20),
        Stack(
          children: [
            CircleAvatar(
              radius: 50,
              foregroundImage: AssetImage(profileImage),
            ),
            const Positioned(
              bottom: -10,
              left: 38,
              child: CircleAvatar(
                radius: 12,
                child: Text('2'),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
