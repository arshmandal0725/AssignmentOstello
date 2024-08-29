import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello/constant.dart';

class TabsInHomeScreen extends ConsumerStatefulWidget {
  const TabsInHomeScreen({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final Function() onTap;

  @override
  ConsumerState<TabsInHomeScreen> createState() => _TabsInHomeScreenState();
}

class _TabsInHomeScreenState extends ConsumerState<TabsInHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: screenSize.width * 0.25,
        height: double.infinity,
        decoration: BoxDecoration(
          border: widget.isSelected
              ? Border(
                  bottom: BorderSide(width: 2, color: vibrantPurple),
                )
              : const Border(),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: widget.isSelected
                ? avenirNextLTProHigh(
                    screenSize.width * 0.035,
                    Colors.black,
                  )
                : avenirNextLTProMedium(
                    screenSize.width * 0.035,
                    mediumGrey,
                  ),
          ),
        ),
      ),
    );
  }
}
