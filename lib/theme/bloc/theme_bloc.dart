import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(super.initialState) {
    on<ThemeEventLightMode>(_onThemeEventLightMode);
    on<ThemeEventDarkMode>(_onThemeEventDarkMode);
    on<ThemeEventColorSelected>(_onThemeEventColorSelected);
  }

  FutureOr<void> _onThemeEventLightMode(
    ThemeEventLightMode event,
    Emitter<ThemeState> emit,
  ) {
    emit(
      state.copyWith(
        isDarkMode: false,
      ),
    );
  }

  FutureOr<void> _onThemeEventDarkMode(
    ThemeEventDarkMode event,
    Emitter<ThemeState> emit,
  ) {
    emit(
      state.copyWith(isDarkMode: true),
    );
  }

  FutureOr<void> _onThemeEventColorSelected(
    ThemeEventColorSelected event,
    Emitter<ThemeState> emit,
  ) {
    emit(
      state.copyWith(selectedColor: event.color),
    );
  }
}
