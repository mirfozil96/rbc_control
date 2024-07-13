import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/user_model.dart';
import '../../domain/usecases/get_user.dart';

final profileViewModelProvider =
    StateNotifierProvider<ProfileViewModel, UserModel>((ref) {
  final getUser = ref.read(getUserUseCaseProvider);
  return ProfileViewModel(getUser);
});

class ProfileViewModel extends StateNotifier<UserModel> {
  final GetUser getUser;

  ProfileViewModel(this.getUser) : super(UserModel(name: '', email: ''));

  Future<void> fetchUserProfile(int id) async {
    final user = await getUser.execute(id);
    state = user;
  }
}
