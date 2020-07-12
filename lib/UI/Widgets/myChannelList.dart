import 'package:flutter/material.dart';
import 'package:whats_going_on/UI/SubWidgets/channelExpansionTile.dart';
import 'package:whats_going_on/sampleData.dart';

class MyChannelsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ...channels.map(
            (channel) {
              return ChannelExpansionTile(
                channel: channel,
              );
            },
          ),
          ...channels.map(
            (channel) {
              return ChannelExpansionTile(
                channel: channel,
              );
            },
          ),
          ...channels.map(
            (channel) {
              return ChannelExpansionTile(
                channel: channel,
              );
            },
          ),
        ],
      ),
    );
  }
}
