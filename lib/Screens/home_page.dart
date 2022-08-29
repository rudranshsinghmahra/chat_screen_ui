import 'package:flutter/material.dart';
import 'package:ui_design_chat_app/Screens/camera.dart';
import 'package:ui_design_chat_app/Screens/chats.dart';
import 'package:ui_design_chat_app/Screens/contacts.dart';
import 'package:ui_design_chat_app/Screens/group.dart';
import 'package:ui_design_chat_app/Widgets/flexible_app_bar.dart';
import 'package:ui_design_chat_app/Widgets/my_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              title: SafeArea(
                child: MyAppBar(),
              ),
              expandedHeight: 180,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.zero,
                background: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: FlexibleAppBar(),
                ),
              ),
              bottom: TabBar(
                indicatorColor: Colors.white,

                // padding: EdgeInsets.only(bottom: 8),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.history,
                      size: 40,
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.people, size: 40),
                  ),
                  Tab(
                    icon: Icon(Icons.perm_contact_cal_sharp, size: 40),
                  ),
                  Tab(
                    icon: Icon(Icons.camera, size: 40),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    width: MediaQuery.of(context).size.width,
                    child: const TabBarView(
                      children: [
                        RecentChats(),
                        Groups(),
                        Contacts(),
                        Camera(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
