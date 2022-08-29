import 'package:flutter/material.dart';

Widget senderChat(BuildContext context, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10.0, right: 18),
        child: Container(
          // height: 45,
          width: MediaQuery.of(context).size.width * 0.62,
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, top: 10, bottom: 10, right: 10),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(30)),
          child: ClipOval(
            child: Image.asset('assets/profile_picture.jpg'),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Text(
          "05:23PM",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
