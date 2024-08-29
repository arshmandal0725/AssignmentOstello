import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';
import 'package:ostello/widgets/parentscreen_widgets/image_container.dart';

class ParentScreenAppbar extends StatefulWidget {
  const ParentScreenAppbar({super.key});

  @override
  State<ParentScreenAppbar> createState() => _ParentScreenAppbarState();
}

class _ParentScreenAppbarState extends State<ParentScreenAppbar> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return AppBar(
      flexibleSpace: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.05,
        ),
        height: double.infinity,
        child: Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const ProfileImage(),
              SizedBox(
                width: screenSize.width * 0.05,
              ),
              SizedBox(
                height: screenSize.height * 0.05,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name Of the Institute",
                      style: avenirLTProHigh(
                        screenSize.width * 0.045,
                        darkGrey1,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
