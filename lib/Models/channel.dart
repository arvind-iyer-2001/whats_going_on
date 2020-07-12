import 'package:flutter/material.dart';
import 'package:whats_going_on/Models/thread.dart';

class Channel {
  final String channelId;
  final String channelName;
  final List<String> channelDescription;
  final List<String> media;
  final List<Thread> channelThreads;

  Channel({
    this.channelId,
    this.channelName,
    this.channelDescription,
    this.media,
    @required this.channelThreads,
  });
}
