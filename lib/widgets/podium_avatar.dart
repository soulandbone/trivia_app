import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PodiumAvatar extends StatelessWidget {
  final String profileImage;
  final int rank;

  const PodiumAvatar(
      {required this.profileImage, required this.rank, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 110,
        child: Stack(children: [
          const Positioned(
            top: 25,
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 55,
              child: CircleAvatar(
                foregroundImage: AssetImage(
                  'assets/images/profile_1.jpg',
                ),
                radius: 50,
              ),
            ),
          ),
          Positioned(
              left: 42,
              bottom: 10,
              child: CircleAvatar(
                backgroundColor: Colors.amberAccent,
                radius: 12,
                child: Text(rank.toString()),
              )),
          if (rank == 1)
            Positioned(
                left: 38,
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