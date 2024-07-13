import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../viewmodels/profile_viewmodel.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(profileViewModelProvider);

    return Scaffold(
      body: Center(
        child: user.name.isNotEmpty
            ? Text('Profile: ${user.name}')
            : const CircularProgressIndicator(),
      ),
    );
  }
}
