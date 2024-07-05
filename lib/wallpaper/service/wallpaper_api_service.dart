import 'dart:developer';

import 'package:http/http.dart';
import '../model/get_wallpaper_response_model.dart';

// https://api.pexels.com/v1/search?query=nature&per_page=1

const _apiKey = 'IPOSX1Tc8S4NjPuDyAbOa8AFxfzDVnZoxXAnc1fTxqHnk3gBpSWO5OXg';

class WallpaperApiService {
  final Client _client = Client();

  Future<GetWallpaperResponseModel?> getWallpapers() async {
    try {
      final uri = Uri(
        scheme: 'https',
        host: 'api.pexels.com',
        path: 'v1/search',
        queryParameters: {
          'query': 'house',
        },
      );
      final response = await _client.get(
        uri,
        headers: {
          'Authorization': _apiKey,
        },
      );
      if (response.statusCode == 200) {
        return GetWallpaperResponseModel.fromJson(response.body);
      }
      return null;
    } catch (e) {
      log('Something went wrong', error: e);
      return null;
    }
  }
}
