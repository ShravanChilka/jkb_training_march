class WallpaperModel {
  const WallpaperModel({
    required this.id,
    required this.large,
    required this.medium,
    required this.small,
    required this.photographer,
    required this.alt,
  });

  factory WallpaperModel.fromMap(Map<String, dynamic> map) {
    return WallpaperModel(
      id: map['id'] as int,
      large: map['src']['large'] as String,
      medium: map['src']['medium'] as String,
      small: map['src']['small'] as String,
      photographer: map['photographer'] as String,
      alt: map['alt'],
    );
  }

  final int id;
  final String large;
  final String medium;
  final String small;
  final String photographer;
  final String alt;
}
