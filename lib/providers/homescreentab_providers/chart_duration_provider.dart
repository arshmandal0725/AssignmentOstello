import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChartTabNotifier extends StateNotifier<int> {
  ChartTabNotifier() : super(0);

  void changeIndex(int index) {
    state = index;
  }
}

final charttabProvider = StateNotifierProvider<ChartTabNotifier, int>((ref) {
  return ChartTabNotifier();
});
