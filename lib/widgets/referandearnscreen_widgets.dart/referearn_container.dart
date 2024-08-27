import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class ReferearnContainer extends StatelessWidget {
  const ReferearnContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: const Color(0xFFFFF5F3),
          height: mq.height * 0.45,
          width: double.infinity,
          child: Image.asset("assets/images/image/Bitcoin P2P-pana.png"),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          height: mq.height * 0.45,
          child: Column(
            children: [
              const Text(
                "Refer & Earn",
                style: TextStyle(
                    fontFamily: "Avenir",
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Color(0xFFF14747)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.center,
                child: Text(
                  content1,
                  style: const TextStyle(
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xFF5C5C5C)),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
