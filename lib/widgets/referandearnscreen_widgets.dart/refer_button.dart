import 'package:flutter/material.dart';

class ReferButton extends StatelessWidget {
  const ReferButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(backgroundColor: const Color(0xFF7D23E0)),
        onPressed: () {},
        child: const Text(
          "Refer",
          style: TextStyle(
              fontFamily: "Avenir",
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}
