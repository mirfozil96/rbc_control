import 'package:d_navigation_bar/d_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/app_route_name.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class PrimaryPage extends StatelessWidget {
  final Widget child;
  const PrimaryPage(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          child,
          BottomNavigationBarBackground(
            child: DNavigationBar(
              onChanged: (index) {
                context.go(index == 0
                    ? AppRouteName.home
                    : index == 1
                        ? AppRouteName.profile
                        : AppRouteName.profile);
              },
              backgroundColor: Colors.transparent,
              useShadow: false,
              items: [
                DNavigationBarItem(
                  icon: const Icon(Icons.abc),
                  activeIcon: const Icon(Icons.abc_sharp),
                ),
                DNavigationBarItem(
                  icon: const Icon(Icons.abc),
                  activeIcon: const Icon(Icons.abc_sharp),
                ),
                DNavigationBarItem(
                  icon: const Icon(Icons.abc),
                  activeIcon: const Icon(Icons.abc_sharp),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
