// import 'package:college/push_notification.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';

// class MessagingWidget extends StatefulWidget {
//   const MessagingWidget({Key? key}) : super(key: key);

//   @override
//   _MessagingWidgetState createState() => _MessagingWidgetState();
// }

// class _MessagingWidgetState extends State<MessagingWidget> {
//   final FirebaseMessaging _fcm = FirebaseMessaging();
//   final List<Message> msg = [];
//   @override

//   void initState(){

//     super.initState();
//     _fcm.configure(
//       //  onMessage: (Map<String, dynamic> message) async {
//       //print('onMessage, $message');
//      // final notification = message['notification'];
//       //setState(() {
//         //message.a(Message(title: notification['title'], body: notification['body']));
//        //});

//     //},
//     onLaunch : (Map<String, dynamic> message) async {
//     print('onMessage, $message');
//     },
//     onResume: (Map<String, dynamic> message) async {
//     print('onMessage, $message');
//     }
//     );

//   }

//   Widget build(BuildContext context) => ListView(
//       children: msg.map(buildMessage).toList(),
//     );
// Widget buildMessage (Message message)=> ListTile(
//   title: Text(message.title),
//   subtitle: Text(message.body),
// );
// }
