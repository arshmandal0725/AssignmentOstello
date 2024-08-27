import 'package:flutter/material.dart';

class BottomNavIconlabel extends StatelessWidget {
  const BottomNavIconlabel(
      {super.key,
      required this.iconImage,
      required this.label,
      required this.selected});
  final String iconImage;
  final String label;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Image.asset(
              iconImage,
              color: (selected)
                  ? const Color(0xFF7D23E0)
                  : const Color(0xFF7D7D7D),
            )),
        Text(label,
            style: TextStyle(
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w800,
                fontSize: 12,
                color: (selected)
                    ? const Color(0xFF7D23E0)
                    : const Color(0xFF7D7D7D)))
      ],
    );
  }
}
