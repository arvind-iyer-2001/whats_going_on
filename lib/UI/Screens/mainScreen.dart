import 'package:flutter/material.dart';

import '../Widgets/suggestions.dart';
import '../Widgets/myChannelList.dart';
import '../Widgets/createChannel.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What's Going On"),
      ),
      body: Container(
        child: ListView(
          children: [
            Text(
              'Recommended for You',
              textAlign: TextAlign.center,
            ),
            Suggestions(),
            Divider(),
            Text(
              'Your Subscribed Channels',
              textAlign: TextAlign.center,
            ),
            MyChannelsList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text('New Channel'),
        onPressed: () {
          print('New Channel');
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            builder: (context) {
              return CreateChannel();
            },
          );
        },
      ),
    );
  }
}
