import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PodiumAvatar extends StatelessWidget {
  final String profileImage;
  final int
      rank; // if rank is 1, it is different, higher, probably should be at a higher level to make it be in the middle center. Something to consider

  const PodiumAvatar(
      {required this.profileImage, required this.rank, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 100,
        child: Stack(children: [
          const Positioned(
            top: 25,
            child: CircleAvatar(
              foregroundImage: AssetImage(
                'assets/images/profile_1.jpg',
              ),
              radius: 50,
            ),
          ),
          Positioned(
              left: 36,
              bottom: 10,
              child: CircleAvatar(
                radius: 12,
                child: Text(rank.toString()),
              )),
          Positioned(
              left: 32,
              top: -3,
              child: SvgPicture.asset('assets/images/crown1.svg', height: 32))
        ]));
  }
}


//    return Column(children: [
    //   SvgPicture.asset('assets/images/crown1.svg', height: 38),
    //   Stack(
    //     children: [
    //       CircleAvatar(
    //         radius: 50,
    //         foregroundImage: AssetImage(profileImage),
    //       ),
    //       Positioned(
    //         bottom: 0,
    //         left: 38,
    //         child: CircleAvatar(
    //           radius: 12,
    //           child: Text(rank.toString()),
    //         ),
    //       ),
    //     ],
    //   )
    // ]);