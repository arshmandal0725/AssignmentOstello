import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: const Color(0xFFCBCACB))),
      width: 120,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
              height: 15,
              width: 15,
              child: Image.asset("assets/images/tools/Vector.png")),
          Text(
            "Filter",
            style: avenirNextLTProHigh(15, Colors.black),
          ),
          SizedBox(
              height: 20,
              width: 20,
              child: Image.asset("assets/images/tools/arrow-down.png")),
        ],
      ),
    );
  }
}
