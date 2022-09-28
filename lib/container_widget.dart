import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  ContainerWidget(
      {required this.myColor,
      required this.containerChild,
      required this.onPresseds});
  final Color myColor;
  final Widget containerChild;
  final VoidCallback? onPresseds;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPresseds,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: myColor,
        ),
        child: containerChild,
      ),
    );
  }
}
