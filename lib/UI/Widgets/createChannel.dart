import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whats_going_on/BackEnd/DatabaseServices/channelDatabase.dart';

class CreateChannel extends StatefulWidget {
  @override
  _CreateChannelState createState() => _CreateChannelState();
}

class _CreateChannelState extends State<CreateChannel> {
  final _formKey = GlobalKey<FormState>();
  String channelName;
  String description;
  String locale;

  File image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            Center(child: Text('Create New Channel')),
            // Channel Name
            TextFormField(
              decoration: InputDecoration(labelText: 'Channel Tag'),
              validator: (value) {
                if (value.startsWith('\#') && value.length >= 3) {
                  return null;
                }
                return 'Add \# at the beginning and enter a valid name';
              },
              onChanged: (value) {
                setState(() {
                  channelName = value.trim();
                });
              },
            ),
            // Channel Description
            TextFormField(
              decoration: InputDecoration(labelText: 'Channel Description'),
              validator: (value) {
                if (value.length >= 10) {
                  return null;
                }
                return 'Enter a valid description';
              },
              onChanged: (value) {
                setState(() {
                  description = value;
                });
              },
            ),
            // Channel Image Selector
            ImageSelector(),
            // Channel Locale
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Channel Locale'),
                    onChanged: (value) {
                      setState(() {
                        locale = value;
                      });
                    },
                  ),
                ),
                FlatButton(
                  child: Text('Select Locale'),
                  onPressed: () {},
                )
              ],
            ),
            FlatButton(
              child: Text('Create New Channel'),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // Upload to Cloud Storage
                  // Create new Channel
                  ChannelDatabase().newChannel(
                    channelCreator: "Bleh",
                    channelDescription: description.split("."),
                    image:
                        'https://cdn.techinasia.com/wp-content/uploads/2016/02/traffic-jam-india.jpg',
                    channelLocale: locale,
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

class ImageSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            height: 200,
            width: 150,
            child: Image.network(
              'https://cdn.techinasia.com/wp-content/uploads/2016/02/traffic-jam-india.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Text('Select Image'),
            ),
          ),
        ],
      ),
    );
  }
}
