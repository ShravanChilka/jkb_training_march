import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jkb_training_march/user/bloc/user_event.dart';
import 'package:jkb_training_march/user/bloc/user_state.dart';
import 'package:jkb_training_march/user/service/user_api_service.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState(users: [])) {
    on<UserEventGetUsers>(_onUserEventGetUsers);
    on<UserEventLogin>(_onUserEventLogin);
  }

  final UserApiService _apiService = UserApiService();

  FutureOr<void> _onUserEventGetUsers(
    UserEventGetUsers event,
    Emitter<UserState> emit,
  ) async {
    final reponse = await _apiService.getAllUsers();
    if (reponse != null) {
      emit(
        UserState(users: reponse.data),
      );
    }
  }

  FutureOr<void> _onUserEventLogin(
    UserEventLogin event,
    Emitter<UserState> emit,
  ) {
    _apiService.login();
  }
}
