import 'dart:convert';

import 'wallpaper_model.dart';

class GetWallpaperResponseModel {
  const GetWallpaperResponseModel({
    required this.totalResults,
    required this.page,
    required this.perPage,
    required this.photos,
  });

  factory GetWallpaperResponseModel.fromJson(String jsonString) {
    return GetWallpaperResponseModel.fromMap(
      json.decode(jsonString) as Map<String, dynamic>,
    );
  }

  factory GetWallpaperResponseModel.fromMap(Map<String, dynamic> map) {
    return GetWallpaperResponseModel(
      totalResults: map['total_results'] as int,
      page: map['page'] as int,
      perPage: map['per_page'] as int,
      photos: (map['photos'] as List)
          .map((wallpaperMap) => WallpaperModel.fromMap(wallpaperMap))
          .toList(),
    );
  }

  final int totalResults;
  final int page;
  final int perPage;
  final List<WallpaperModel> photos;
}




// {
//   "total_results": 10000,
//   "page": 1,
//   "per_page": 1,
//   "photos": [
//     // {
//       "id": 3573351,
//       "width": 3066,
//       "height": 3968,
//       "url": "https://www.pexels.com/photo/trees-during-day-3573351/",
//       "photographer": "Lukas Rodriguez",
//       "photographer_url": "https://www.pexels.com/@lukas-rodriguez-1845331",
//       "photographer_id": 1845331,
//       "avg_color": "#374824",
//       "src": {
//         "original": "https://images.pexels.com/photos/3573351/pexels-photo-3573351.png",
//         "large2x": "https://images.pexels.com/photos/3573351/pexels-photo-3573351.png?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
//         "large": "https://images.pexels.com/photos/3573351/pexels-photo-3573351.png?auto=compress&cs=tinysrgb&h=650&w=940",
//         "medium": "https://images.pexels.com/photos/3573351/pexels-photo-3573351.png?auto=compress&cs=tinysrgb&h=350",
//         "small": "https://images.pexels.com/photos/3573351/pexels-photo-3573351.png?auto=compress&cs=tinysrgb&h=130",
//         "portrait": "https://images.pexels.com/photos/3573351/pexels-photo-3573351.png?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
//         "landscape": "https://images.pexels.com/photos/3573351/pexels-photo-3573351.png?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
//         "tiny": "https://images.pexels.com/photos/3573351/pexels-photo-3573351.png?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
//       },
//       "liked": false,
//       "alt": "Brown Rocks During Golden Hour"
//     }
//   ],
//   "next_page": "https://api.pexels.com/v1/search/?page=2&per_page=1&query=nature"
// }