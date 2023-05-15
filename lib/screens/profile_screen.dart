import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String userProfilePic;

  const ProfileScreen(
      {required this.userName,
      required this.userEmail,
      required this.userProfilePic,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Profile'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Gap(30),
          CircleAvatar(
            radius: 80,
            foregroundImage: AssetImage(userProfilePic),
          ),
          const Gap(15),
          Text(
            userName,
            style: AppStyles.title.copyWith(fontSize: 38),
          ),
          Gap(10),
          Text(userEmail)
        ]),
      ),
    );
  }
}
