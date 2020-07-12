import 'package:flutter/material.dart';

class Thread {
  final String threadId;
  final String threadNumber;
  final String threadMessage;
  final String threadPoster;
  final DateTime threadPostTime;
  final int threadLikes;
  final List<String> threadImages;

  Thread({
    @required this.threadMessage,
    @required this.threadId,
    @required this.threadNumber,
    @required this.threadPoster,
    @required this.threadPostTime,
    @required this.threadLikes,
    @required this.threadImages,
  });
}
