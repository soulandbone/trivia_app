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
        //decoration: const BoxDecoration(color: Colors.indigoAccent), // for debuggind purposes
        height: 140,
        width: 110,
        child: Stack(children: [
          Positioned(
            top: 25,
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 55,
              child: CircleAvatar(
                foregroundImage: AssetImage(profileImage),
                radius: 50,
              ),
            ),
          ),
          Positioned(
              left: 42,
              bottom: 0,
              child: CircleAvatar(
                backgroundColor: Colors.amberAccent,
                radius: 14,
                child: Text(rank.toString()),
              )),
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