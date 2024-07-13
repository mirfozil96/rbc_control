import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingViewModelProvider = StateNotifierProvider<OnboardingViewModel, int>((ref) {
  return OnboardingViewModel();
});

class OnboardingViewModel extends StateNotifier<int> {
  OnboardingViewModel() : super(0);

  void nextPage() {
    state++;
  }

  void previousPage() {
    state--;
  }
}
