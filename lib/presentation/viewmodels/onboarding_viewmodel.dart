import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingViewModelProvider = StateNotifierProvider<OnboardingViewModel, OnboardingState>((ref) {
  return OnboardingViewModel();
});

class OnboardingState {
  final int pageIndex;
  final String title;
  final String subTitle;
  final bool isFinal;
  final PageController pageController;

  OnboardingState({
    required this.pageIndex,
    required this.title,
    required this.subTitle,
    required this.isFinal,
    required this.pageController,
  });

  OnboardingState copyWith({
    int? pageIndex,
    String? title,
    String? subTitle,
    bool? isFinal,
    PageController? pageController,
  }) {
    return OnboardingState(
      pageIndex: pageIndex ?? this.pageIndex,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      isFinal: isFinal ?? this.isFinal,
      pageController: pageController ?? this.pageController,
    );
  }
}

class OnboardingViewModel extends StateNotifier<OnboardingState> {
  OnboardingViewModel() : super(OnboardingState(
      pageIndex: 0,
      title: 'Easy Process',
      subTitle: 'Find all your house needs in one place.  We provide every service to make your home experience smooth.',
      isFinal: false,
      pageController: PageController(),
    ));

  void onPageChanged(int index) {
    String title;
    String subTitle;
    bool isFinal;

    if (index == 0) {
      title = 'Easy Process';
      subTitle = 'Find all your house needs in one place.  We provide every service to make your home experience smooth.';
      isFinal = false;
    } else if (index == 1) {
      title = "Fast Transportation";
      subTitle = "We provide the best transportation service and organize your furniture properly to prevent any damage.";
      isFinal = false;
    } else if (index == 2) {
      title = "Expert People";
      subTitle = "We have the best in class individuals working just for you. They are well  trained and capable of handling anything you need.";
      isFinal = true;
    } else {
      title = "";
      subTitle = "";
      isFinal = false;
    }

    state = state.copyWith(
      pageIndex: index,
      title: title,
      subTitle: subTitle,
      isFinal: isFinal,
    );
  }

  @override
  void dispose() {
    state.pageController.dispose();
    super.dispose();
  }
}
