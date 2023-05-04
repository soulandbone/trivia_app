import 'package:flutter/material.dart';
import 'package:trivia_app/utils/app_styles.dart';
import 'package:trivia_app/widgets/custom_button.dart';

class SwitchThree extends StatefulWidget {
  const SwitchThree({super.key});

  @override
  State<SwitchThree> createState() => _SwitchThreeState();
}

class _SwitchThreeState extends State<SwitchThree> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    onPress(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          color: AppStyles.grey50, borderRadius: BorderRadius.circular(12)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CustomButton(
            callback: onPress,
            id: 0,
            text: 'All time',
            pressed: currentIndex == 0 ? true : false),
        CustomButton(
          callback: onPress,
          text: 'This week',
          id: 1,
          pressed: currentIndex == 1 ? true : false,
        ),
        CustomButton(
          callback: onPress,
          text: 'Month',
          id: 2,
          pressed: currentIndex == 2 ? true : false,
        )
      ]),
    );
  }
}
