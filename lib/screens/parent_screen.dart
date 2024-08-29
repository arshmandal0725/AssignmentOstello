import 'package:flutter/material.dart';
import 'package:ostello/screens/tabs/home_screen_tab.dart';
import 'package:ostello/widgets/bottom_navigation/custom_bottomnavbar.dart';
import 'package:ostello/widgets/parentscreen_widgets/parentscreen_appbar.dart';

class ParentScreen extends StatefulWidget {
  const ParentScreen({super.key});

  @override
  State<ParentScreen> createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  @override
  Widget build(BuildContext context) {
    print('Building ParentScreen');
    final screenSize = MediaQuery.of(context).size;
    final double appBarHeight = screenSize.height * 0.06;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: const ParentScreenAppbar(),
      ),
      body: const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(child: HomeScreenTab()),
            CustomBottomnavbar(),
          ],
        ),
      ),
    );
  }
}
