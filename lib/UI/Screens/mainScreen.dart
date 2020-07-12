import 'package:flutter/material.dart';

import '../Widgets/suggestions.dart';

import '../Widgets/myChannelList.dart';

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
              'Your Channel Subscriptions',
              textAlign: TextAlign.center,
            ),
            MyChannelsList(),
          ],
        ),
      ),
    );
  }
}
