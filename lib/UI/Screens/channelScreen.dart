import 'package:flutter/material.dart';
import 'package:whats_going_on/UI/Screens/threadScreen.dart';
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
          itemCount: channel.channelThreads.length + 4,
          itemBuilder: (context, index) {
            final thread = channel.channelThreads[0];
            return Container(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                title: Text(thread.threadMessage),
                initiallyExpanded: true,
                children: [
                  Container(
                    height: 200,
                    child: Image.network(
                      thread.threadImages[0],
                      fit: BoxFit.cover,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        ThreadScreen.routeName,
                        arguments: thread.threadId,
                      );
                    },
                    child: Text('Go to Thread'),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
