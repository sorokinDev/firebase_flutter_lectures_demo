import 'package:flutter/material.dart';

class YoutubeThumbnailImage extends StatelessWidget {
  final String videoId;
  const YoutubeThumbnailImage({
    required this.videoId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://img.youtube.com/vi/$videoId/sddefault.jpg',
      height: 200,
      fit: BoxFit.cover,
    );
  }
}
