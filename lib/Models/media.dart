import 'package:flutter/material.dart';

class Media {
  final String mediaUrl;
  final MediaType mediaType;

  Media({
    @required this.mediaUrl,
    @required this.mediaType,
  });
}

enum MediaType {
  Image,
  Audio,
  Video,
  PDF,
}
