import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeTabNotifier extends StateNotifier<int> {
  HomeTabNotifier() : super(0);

  void changeIndex(int index) {
    state = index;
  }
}

final hometabProvider = StateNotifierProvider<HomeTabNotifier, int>((ref) {
  return HomeTabNotifier();
});
