import './Models/channel.dart';
import './Models/thread.dart';

List<Channel> channels = [
  Channel(
    channelId: 'ch1',
    channelName: '#traffic',
    channelDescription: [
      "This Feed is for obtaining latest traffic updates, live from people in and around your area.",
      // "Restrict the Channel to only discuss matters related to traffic",
      // "Switch on your Location Services to get feed related to your Location",
    ],
    threadCount: 1,
    image:
        'https://media.npr.org/assets/img/2020/05/26/gettyimages-1212967219-2-_wide-f9d4e3f2a4649134faaa937b8bc12a8db2c43e93-s1500-c85.jpg',
    channelThreads: [
      Thread(
        threadMessage: "Traffic at ______ Junction",
        threadId: "t0",
        threadImages: [
          'https://media.npr.org/assets/img/2020/05/26/gettyimages-1212967219-2-_wide-f9d4e3f2a4649134faaa937b8bc12a8db2c43e93-s1500-c85.jpg',
        ],
        threadLikes: 0,
        threadNumber: "Thread 0",
        threadPostTime: DateTime(2011, 9, 20, 10, 10, 10),
        threadPoster: "you",
      ),
    ],
  ),
  Channel(
    channelId: 'ch2',
    channelName: '#utilities',
    channelDescription: [
      "This Feed is for knowing about utilities and their problems, live from people in and around your area.",
      "Restrict the Channel to only discuss matters related to utilities",
      "Switch on your Location Services to get feed related to your Location",
    ],
    threadCount: 1,
    image:
        'https://media.npr.org/assets/img/2020/05/26/gettyimages-1212967219-2-_wide-f9d4e3f2a4649134faaa937b8bc12a8db2c43e93-s1500-c85.jpg',
    channelThreads: [
      Thread(
        threadMessage: "Electricity cut at ________ from _______ to _______",
        threadId: "t0",
        threadImages: [
          'https://media.npr.org/assets/img/2020/05/26/gettyimages-1212967219-2-_wide-f9d4e3f2a4649134faaa937b8bc12a8db2c43e93-s1500-c85.jpg',
        ],
        threadLikes: 0,
        threadNumber: "Thread 0",
        threadPostTime: DateTime(2012, 9, 20, 10, 10, 10),
        threadPoster: "me",
      ),
    ],
  ),
  Channel(
    channelId: 'ch3',
    channelName: '#entertainment',
    channelDescription: [
      "This Feed is for obtaining latest information about activities around you, live from people in and around your area.",
      "Restrict the Channel to only discuss matters related to traffic",
      "Switch on your Location Services to get feed related to your Location",
    ],
    threadCount: 1,
    image:
        'https://media.npr.org/assets/img/2020/05/26/gettyimages-1212967219-2-_wide-f9d4e3f2a4649134faaa937b8bc12a8db2c43e93-s1500-c85.jpg',
    channelThreads: [
      Thread(
        threadMessage: "Cycling Contest at ________ at 10:30pm tomorrow",
        threadId: "t0",
        threadImages: [],
        threadLikes: 0,
        threadNumber: "Thread 0",
        threadPostTime: DateTime(2019, 9, 20, 10, 10, 10),
        threadPoster: "me",
      ),
    ],
  ),
  Channel(
    channelId: 'ch4',
    channelName: '#groceries',
    channelDescription: [
      "This Feed is for obtaining information related to Vendors selling groceries directly from farms",
      "Switch on your Location Services to get feed related to your Location",
    ],
    threadCount: 1,
    image:
        'https://media.npr.org/assets/img/2020/05/26/gettyimages-1212967219-2-_wide-f9d4e3f2a4649134faaa937b8bc12a8db2c43e93-s1500-c85.jpg',
    channelThreads: [
      Thread(
        threadMessage: "Pineapple Vendor Coming at 9 AMS",
        threadId: "t0",
        threadImages: [],
        threadLikes: 0,
        threadNumber: "Thread 0",
        threadPostTime: DateTime(2019, 9, 20, 10, 10, 10),
        threadPoster: "me",
      ),
    ],
  ),
];
