import 'package:flutter/material.dart';
import 'package:trivia_app/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final int id;
  final String text;
  final bool pressed;
  Function callback;

  CustomButton(
      {required this.id,
      required this.text,
      required this.pressed,
      required this.callback,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //key: ValueKey(widget.text),
        width: 100,
        height: 40,
        margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
        decoration: BoxDecoration(
            color: pressed ? AppStyles.lightBlue : AppStyles.grey50,
            borderRadius: BorderRadius.circular(10)),
        child: TextButton(
          onPressed: () => callback(id),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
