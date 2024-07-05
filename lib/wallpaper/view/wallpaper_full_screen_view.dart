import 'package:flutter/material.dart';
import '../model/wallpaper_model.dart';

class WallpaperFullScreenView extends StatelessWidget {
  const WallpaperFullScreenView({
    super.key,
    required this.wallpaperModel,
  });

  final WallpaperModel wallpaperModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wallpaperModel.photographer),
      ),
      body: Image.network(
        wallpaperModel.large,
        fit: BoxFit.cover,
        width: double.maxFinite,
        height: double.maxFinite,
      ),
    );
  }
}
