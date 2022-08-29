import 'package:flutter/material.dart';

Widget receiverChat(BuildContext context, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 18),
        child: Container(
          // height: 80,
          width: MediaQuery.of(context).size.width * 0.62,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20))),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 10, bottom: 10, right: 20),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
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
        padding: EdgeInsets.only(left: 10),
        child: Text(
          "05:23PM",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
