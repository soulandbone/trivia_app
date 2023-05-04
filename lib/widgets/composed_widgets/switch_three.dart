import 'package:flutter/material.dart';
import 'package:trivia_app/utils/app_styles.dart';
import 'package:trivia_app/widgets/custom_button.dart';

class SwitchThree extends StatefulWidget {
  String button1Text;
  String button2Text;
  String button3Text;

  SwitchThree(
      {required this.button1Text,
      required this.button2Text,
      required this.button3Text,
      super.key});

  @override
  State<SwitchThree> createState() => _SwitchThreeState();
}

class _SwitchThreeState extends State<SwitchThree> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    onPress(String text) {
      int index;
      if (widget.button1Text == text) {
        index = 0;
      } else if (widget.button2Text == text) {
        index = 1;
      } else {
        index = 2;
      }

      setState(() {
        currentIndex = index;
      });
      print('The text is $text');
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          color: AppStyles.grey50, borderRadius: BorderRadius.circular(12)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CustomButton(
            callback: onPress,
            text: widget.button1Text,
            pressed: currentIndex == 0 ? true : false),
        CustomButton(
          callback: onPress,
          text: widget.button2Text,
          pressed: currentIndex == 1 ? true : false,
        ),
        CustomButton(
          callback: onPress,
          text: widget.button3Text,
          pressed: currentIndex == 2 ? true : false,
        )
      ]),
    );
  }
}
