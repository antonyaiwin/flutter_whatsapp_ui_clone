import 'package:flutter/material.dart';
import 'package:flutter_application_9/view/home_screen/tabs/calls_tab.dart';
import 'package:flutter_application_9/view/home_screen/tabs/chat_tab.dart';
import 'package:flutter_application_9/view/home_screen/tabs/community_tab.dart';
import 'package:flutter_application_9/view/home_screen/tabs/status_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tabIndex = 1;
  final List floatingActionButtonIconList = [
    Icons.message,
    Icons.camera_alt,
    Icons.add_ic_call_rounded,
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Builder(
        builder: (context) {
          var tabController = DefaultTabController.of(context);
          // tabController.animateTo(1);
          tabController.addListener(() {
            setState(() {
              _tabIndex = tabController.index;
            });
          });
          tabController.animation!.addListener(() {
            setState(() {
              _tabIndex = (tabController.indexIsChanging)
                  ? tabController.index
                  : tabController.animation!.value.round();
            });
          });
          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 0, 168, 132),
              title: const Text(
                'WhatsApp',
                style: TextStyle(color: Colors.white),
              ),
              actions: const [
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
              bottom: const TabBar(
                tabAlignment: TabAlignment.start,
                labelPadding: EdgeInsets.zero,
                isScrollable: true,
                dividerHeight: 0,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white60,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                tabs: [
                  Tab(
                    icon: Icon(Icons.groups_rounded),
                  ),
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(
                    text: 'Status',
                  ),
                  Tab(
                    text: 'Calls',
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                CommunityTab(),
                ChatTab(),
                StatusTab(),
                CallsTab(),
              ],
            ),
            floatingActionButton: _tabIndex > 0
                ? FloatingActionButton(
                    onPressed: () {},
                    child: Icon(floatingActionButtonIconList[_tabIndex - 1]),
                  )
                : null,
          );
        },
      ),
    );
  }
}
