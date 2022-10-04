import 'package:flutter/material.dart';
import '../screens/constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTaps, required this.buttonTitle});
  final VoidCallback? onTaps;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaps,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
          color: kBottomContainerColor,
        ),
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
