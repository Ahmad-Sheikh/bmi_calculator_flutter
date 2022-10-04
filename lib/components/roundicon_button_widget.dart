import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.icon, required this.onPresseds});
  final IconData icon;
  final VoidCallback? onPresseds;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      fillColor: const Color(0xff4C4F5E),
      constraints: const BoxConstraints.tightFor(
        width: 52.0,
        height: 52.0,
      ),
      elevation: 6.0,
      onPressed: onPresseds,
      child: Icon(icon, color: Colors.white),
    );
  }
}
