import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    print('Building ProfileImage');
    final screenSize = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: screenSize.width * 0.1,
          height: screenSize.width * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenSize.width * 0.075),
            color: lightGrey,
          ),
        ),
        Positioned(
          bottom: screenSize.height * -0.005,
          right: screenSize.width * -0.0125,
          child: SizedBox(
            height: screenSize.width * 0.06,
            width: screenSize.width * 0.06,
            child: Image.asset("assets/images/tools/Untitled design-4 1.png"),
          ),
        ),
      ],
    );
  }
}
