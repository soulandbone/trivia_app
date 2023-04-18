import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/utils/app_styles.dart';

class CustomTile extends StatelessWidget {
  final String text1;
  final String text2;
  final Icon icon;

  const CustomTile(
      {required this.text1,
      required this.text2,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 130,
      decoration: BoxDecoration(
          //border: Border.all(width: 1, color: Colors.white),
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.grey.withOpacity(0.5),
          //       spreadRadius: 3,
          //       blurRadius: 8,
          //       offset: const Offset(3, 3)),
          // ],
          color: AppStyles.cardBgColor,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          const Gap(15),
          Column(
            children: [
              Text(
                text1,
                style: const TextStyle(color: Colors.blue),
              ),
              Text(
                text2,
                style: AppStyles.cardSubTitle,
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
