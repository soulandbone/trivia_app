import 'package:flutter/material.dart';

class PodiumAvatar extends StatelessWidget {
  const PodiumAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 90,
      foregroundImage: AssetImage('assets/images/profile_1.jpg'),
    );
  }
}
