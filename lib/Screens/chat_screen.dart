import 'package:flutter/material.dart';
import 'package:ui_design_chat_app/Widgets/receiver_chat.dart';
import 'package:ui_design_chat_app/Widgets/sender_chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 4,
        title: Row(
          children: [
            ClipOval(
              child: Container(
                color: Colors.green,
                height: 10,
                width: 10,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Maharana Pratap",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: ClipOval(
                  child: Container(
                    color: Colors.blue,
                    height: 30,
                    width: 30,
                    child: const Icon(Icons.phone_in_talk_outlined),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: ClipOval(
                  child: Container(
                    color: Colors.blue,
                    height: 30,
                    width: 30,
                    child: const Icon(Icons.video_call_outlined),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              receiverChat(context),
              senderChat(context),
              receiverChat(context),
              senderChat(context),
              receiverChat(context),
              senderChat(context),
              receiverChat(context),
              senderChat(context),
            ],
          ),
        ),
      ),
    );
  }
}
