import 'package:flutter/material.dart';
import 'package:trivia_app/widgets/custom_button.dart';

class SwitchThree extends StatefulWidget {
  const SwitchThree({super.key});

  @override
  State<SwitchThree> createState() => _SwitchThreeState();
}

class _SwitchThreeState extends State<SwitchThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(12)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CustomButton(text: 'All time'),
        CustomButton(text: 'This week'),
        CustomButton(text: 'Month')
      ]),
    );
  }
}
