import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../data/datasources/app_storage.dart';
import '../../routes/app_route_name.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }

  void _navigateToNextPage() async {
    // Simulate a delay for the splash screen
    await Future.delayed(const Duration(seconds: 1));

    String? userUid = await UserStorage.load(key: StorageKey.userUid);

    if (userUid != null) {
      // User is signed in
      context.go(AppRouteName.home);
    } else {
      // User is not signed in
      context.go(AppRouteName.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your app logo or splash screen content here
            Text(
              'Rbc app',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
