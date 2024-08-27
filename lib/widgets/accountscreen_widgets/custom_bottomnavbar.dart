import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';
import 'package:ostello/widgets/accountscreen_widgets/bottom_nav_iconlabel.dart';

class CustomBottomnavbar extends StatelessWidget {
  const CustomBottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavIconlabel(
            iconImage: bottomNavIcon[0],
            label: bottomNavLabel[0],
            selected: false,
          ),
          BottomNavIconlabel(
            iconImage: bottomNavIcon[1],
            label: bottomNavLabel[1],
            selected: false,
          ),
          BottomNavIconlabel(
            iconImage: bottomNavIcon[2],
            label: bottomNavLabel[2],
            selected: false,
          ),
          BottomNavIconlabel(
            iconImage: bottomNavIcon[3],
            label: bottomNavLabel[3],
            selected: false,
          ),
          BottomNavIconlabel(
            iconImage: bottomNavIcon[4],
            label: bottomNavLabel[4],
            selected: true,
          ),
        ],
      ),
    );
  }
}
