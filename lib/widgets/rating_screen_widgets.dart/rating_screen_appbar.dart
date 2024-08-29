import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class RatingScreenAppbar extends StatelessWidget {
  const RatingScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: white,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ImageIcon(
                const AssetImage("assets/images/tools/Line arrow-left.png"),
                color: vibrantPurple,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Ratings",
              style: avenirLTProHigh(22, Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
