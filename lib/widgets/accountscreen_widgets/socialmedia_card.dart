import 'package:flutter/material.dart';

class SocialmediaCard extends StatelessWidget {
  const SocialmediaCard({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFFFFFFFF)),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFFAF6FF)),
            child: Center(
              child: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  image,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            name,
            style: const TextStyle(
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w800,
                fontSize: 14,
                color: Color(0xFF525251)),
          ),
          const Spacer(),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 1, color: const Color(0xFF7D23E0))),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: const Center(
                child: Text("Follow Us",
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        color: Color(0xFF7D23E0))),
              ))
        ],
      ),
    );
  }
}
