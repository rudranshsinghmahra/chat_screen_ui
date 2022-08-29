import 'package:flutter/material.dart';
import 'package:ui_design_chat_app/Screens/chat_screen.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.68,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                );
              },
              title: const Text(
                "Maharana Pratap",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              subtitle: const Text(
                "Bhukhe pyase reh kar bhi apne Mewar ka raksha karunga, apna jan de dunga, par Mewar nahin dunga.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
              leading: ClipOval(
                child: Image.asset(
                  "assets/profile_picture.jpg",
                  fit: BoxFit.cover,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              trailing: ClipOval(
                  child: Container(
                color: Colors.white,
                height: 40,
                width: 40,
                child: const Center(
                    child: Text(
                  "2",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 20),
                )),
              )),
            ),
          );
        },
      ),
    );
  }
}
