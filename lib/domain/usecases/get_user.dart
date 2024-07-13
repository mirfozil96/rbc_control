import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/user_model.dart';

class GetUser {
  Future<UserModel> execute(int id) async {
    // Simulating a network request
    await Future.delayed(Duration(seconds: 2));
    return UserModel(name: 'John Doe', email: 'john.doe@example.com');
  }
}

final getUserUseCaseProvider = Provider<GetUser>((ref) {
  return GetUser();
});
