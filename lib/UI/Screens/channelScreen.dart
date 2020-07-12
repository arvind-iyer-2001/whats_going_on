import 'package:flutter/material.dart';
import 'package:whats_going_on/sampleData.dart';

class ChannelScreen extends StatelessWidget {
  static const routeName = "Channel Screen";
  @override
  Widget build(BuildContext context) {
    final channelId = ModalRoute.of(context).settings.arguments as String;
    final channel =
        channels.firstWhere((element) => element.channelId == channelId);
    return Scaffold(
      appBar: AppBar(
        title: Text(channel.channelName),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: channel.channelThreads.length,
          itemBuilder: (context, index) {
            final thread = channel.channelThreads[index];
            return Container(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                title: Text(thread.threadNumber),
                initiallyExpanded: true,
                children: [
                  Container(
                    child: Image.network(thread.threadImages[0]),
                  ),
                  Text(thread.threadMessage),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
