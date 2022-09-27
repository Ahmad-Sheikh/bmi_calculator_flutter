import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({required this.myColor, required this.containerChild});
  final Color myColor;
  final Widget containerChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: myColor,
      ),
      child: containerChild,
    );
  }
}
