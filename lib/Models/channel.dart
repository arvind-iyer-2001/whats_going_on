import 'package:whats_going_on/Models/thread.dart';

class Channel {
  final String channelId;
  final String channelName;
  final List<String> channelDescription;
  final String image;
  final List<Thread> channelThreads;
  final int threadCount;
  final String channelLocale;

  Channel({
    this.channelId,
    this.channelName,
    this.channelDescription,
    this.image,
    this.threadCount,
    this.channelThreads,
    this.channelLocale,
  });
}
