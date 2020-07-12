import 'package:flutter/material.dart';
import 'package:whats_going_on/Models/channel.dart';
import 'package:whats_going_on/UI/Screens/channelScreen.dart';

class ChannelExpansionTile extends StatelessWidget {
  const ChannelExpansionTile({this.channel});
  final Channel channel;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(channel.channelName),
      subtitle: Text(
        channel.channelThreads[0].threadMessage,
        softWrap: true,
      ),
      leading: CircleAvatar(),
      childrenPadding: EdgeInsets.all(5),
      children: [
        ...channel.channelDescription.map((line) => Text(line)),
        FlatButton(
          child: Text('Go To Channel'),
          onPressed: () {
            Navigator.of(context).pushNamed(
              ChannelScreen.routeName,
              arguments: channel.channelId,
            );
          },
        )
      ],
    );
  }
}
