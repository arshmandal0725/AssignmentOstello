import 'package:flutter/material.dart';
import 'package:ostello/widgets/accountscreen_widgets/socialmedia_card.dart';

class SocialmediaContainer extends StatelessWidget {
  const SocialmediaContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.43,
          decoration: const BoxDecoration(
            color: Color(0xFFFBFBFB),
            border: Border(top: BorderSide(width: 1, color: Color(0xFFEEEEEE))),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Text(
                  "Follow us on social media to win exciting rewards & giveaways",
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: Color(0xFF525251)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SocialmediaCard(
                image: "assets/images/icons/instagram.png",
                name: "Ostelloindia",
              ),
              const SizedBox(
                height: 10,
              ),
              const SocialmediaCard(
                image: "assets/images/icons/facebook.png",
                name: "Ostelloindia",
              ),
              const SizedBox(
                height: 10,
              ),
              const SocialmediaCard(
                image: "assets/images/icons/twitter.png",
                name: "Ostello",
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: mq.height * 0.105,
            color: const Color.fromARGB(239, 246, 246, 246),
          ),
        )
      ],
    );
  }
}
