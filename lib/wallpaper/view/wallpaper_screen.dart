import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/wallpaper_bloc.dart';
import '../bloc/wallpaper_event.dart';
import '../bloc/wallpaper_state.dart';
import 'wallpaper_full_screen_view.dart';

class WallpaperScreen extends StatefulWidget {
  const WallpaperScreen({super.key});

  @override
  State<WallpaperScreen> createState() => _WallpaperScreenState();
}

class _WallpaperScreenState extends State<WallpaperScreen> {
  final _pageController = PageController();

  @override
  void initState() {
    super.initState();
    context.read<WallpaperBloc>().add(
          const WallpaperEventFetch(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallpapers'),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<WallpaperBloc, WallpaperState>(
              builder: (context, state) {
                final wallpapers = state.wallpapers;
                return PageView.builder(
                  controller: _pageController,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: wallpapers.length,
                  itemBuilder: (context, index) {
                    final wallpaper = wallpapers[index];
                    return Column(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => WallpaperFullScreenView(
                                    wallpaperModel: wallpaper,
                                  ),
                                ),
                              );
                            },
                            child: Image.network(
                              wallpaper.medium,
                              fit: BoxFit.cover,
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                log('loadingProgress : $loadingProgress');
                                if (loadingProgress == null) {
                                  return child;
                                }
                                return Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              const Icon(Icons.camera_alt_rounded),
                              const SizedBox(width: 8),
                              Text(
                                wallpaper.photographer,
                                maxLines: 2,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: _onTapPrevPage,
                  child: Ink(
                    height: 80,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.white30),
                      ),
                    ),
                    child: const Icon(Icons.arrow_left),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: _onTapNextPage,
                  child: Ink(
                    height: 80,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.white30),
                        left: BorderSide(color: Colors.white30),
                      ),
                    ),
                    child: const Icon(Icons.arrow_right),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onTapNextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _onTapPrevPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
