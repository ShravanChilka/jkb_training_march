import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jkb_training_march/wallpaper/bloc/wallpaper_event.dart';
import 'package:jkb_training_march/wallpaper/bloc/wallpaper_state.dart';
import 'package:jkb_training_march/wallpaper/service/wallpaper_api_service.dart';

class WallpaperBloc extends Bloc<WallpaperEvent, WallpaperState> {
  WallpaperBloc()
      : super(
          const WallpaperState(wallpapers: []),
        ) {
    on<WallpaperEventFetch>(_onWallpaperEventFetch);
  }

  final _apiService = WallpaperApiService();

  FutureOr<void> _onWallpaperEventFetch(
    WallpaperEventFetch event,
    Emitter<WallpaperState> emit,
  ) async {
    final response = await _apiService.getWallpapers();
    if (response != null) {
      emit(
        WallpaperState(wallpapers: response.photos),
      );
    }
  }
}
