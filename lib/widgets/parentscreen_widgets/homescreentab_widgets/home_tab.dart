import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello/constant.dart';
import 'package:ostello/providers/homescreentab_providers/hometabs_provider.dart';
import 'package:ostello/widgets/parentscreen_widgets/homescreentab_widgets/tabs_inhomescreen_container.dart';

class HomeTab extends ConsumerStatefulWidget {
  const HomeTab({super.key});

  @override
  ConsumerState<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends ConsumerState<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final currentIndex = ref.watch(hometabProvider);

    return Container(
      height: screenSize.height * 0.05,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: lightGrey,
          ),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TabsInHomeScreen(
              title: "Views",
              isSelected: currentIndex == 0,
              onTap: () {
                ref.read(hometabProvider.notifier).changeIndex(0);
              },
            ),
            TabsInHomeScreen(
              title: "Enrolled",
              isSelected: currentIndex == 1,
              onTap: () {
                ref.read(hometabProvider.notifier).changeIndex(1);
              },
            ),
            TabsInHomeScreen(
              title: "Revenue",
              isSelected: currentIndex == 2,
              onTap: () {
                ref.read(hometabProvider.notifier).changeIndex(2);
              },
            ),
            TabsInHomeScreen(
              title: "Followers",
              isSelected: currentIndex == 3,
              onTap: () {
                ref.read(hometabProvider.notifier).changeIndex(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
