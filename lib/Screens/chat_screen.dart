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
              receiverChat(context,
                  "Bro what about the stuff you have to do this evening?"),
              senderChat(context, "Hey Bro, Nothing much"),
              receiverChat(context,
                  "But Why? You told you would be doing a lot of fun today evening"),
              senderChat(context, "Yeah told you, but the plan got cancelled"),
              receiverChat(context, "Why, whats the reason?"),
              senderChat(
                  context, "My grandfather got sick and is hospitalized"),
              receiverChat(context, "What happened , Is he fine now?"),
              senderChat(
                  context, "Yeah fine now , his hemoglobin levels got low"),
              receiverChat(context,
                  "Great to hear that he is fine now, take well care of him, Bye for now"),
              senderChat(context, "Bye Buddy"),
            ],
          ),
        ),
      ),
    );
  }
}
