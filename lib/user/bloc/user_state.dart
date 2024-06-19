import '../model/user_model.dart';

class UserState {
  const UserState({
    required this.users,
  });

  final List<UserModel> users;
}
