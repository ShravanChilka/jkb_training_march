import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jkb_training_march/wallpaper/bloc/wallpaper_bloc.dart';
import 'package:jkb_training_march/wallpaper/view/wallpaper_screen.dart';

class WallpaperPage extends StatelessWidget {
  const WallpaperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WallpaperBloc(),
      child: const WallpaperScreen(),
    );
  }
}
