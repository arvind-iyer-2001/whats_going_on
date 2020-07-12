import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:whats_going_on/Models/channel.dart';

class ChannelDatabase {
  final String channelId;

  ChannelDatabase({this.channelId});

  final CollectionReference channelCollection =
      Firestore.instance.collection("Channels");

  List<Channel> _channelsFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map(_channelFromSnapshot).toList();
  }

  Channel _channelFromSnapshot(DocumentSnapshot doc) {
    return Channel(
      channelName: doc.data['Channel Name'],
      channelDescription: List<String>.from(doc.data['Channel Description']),
      channelId: doc.documentID,
      image: doc.data['Channel Image'],
      threadCount: doc.data['Thread Count'],
      channelLocale: doc.data['Channel Locale'],
    );
  }

  Stream<List<Channel>> get channels {
    return channelCollection.snapshots().map(_channelsFromSnapshot);
  }

  Stream<Channel> get channel {
    return channelCollection
        .document(channelId)
        .snapshots()
        .map(_channelFromSnapshot);
  }

  Future<void> newChannel({
    String channelName,
    List<String> channelDescription,
    String image,
    String channelLocale,
    String channelCreator,
  }) async {
    await channelCollection.add({
      'Channel Description': channelDescription,
      'Channel Name': channelName,
      'Channel Image': image,
      'Thread Count': 0,
      'Channel Locale': channelLocale,
      'Channel Creator': channelCreator,
    });
  }
}
