import 'package:flutter/material.dart';
import 'package:trivia_app/utils/app_styles.dart';

class CustomButton extends StatefulWidget {
  final String text;
  CustomButton({required this.text, super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 100,
        height: 40,
        margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
        decoration: BoxDecoration(
            color: AppStyles.lightBlue,
            borderRadius: BorderRadius.circular(10)),
        child: TextButton(
          onPressed: null,
          child: Text(
            widget.text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
