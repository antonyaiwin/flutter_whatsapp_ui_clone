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
              title: const Text(
                'WhatsApp',
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
                PopupMenuButton<String>(
                  tooltip: 'More options',
                  position: PopupMenuPosition.under,
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        child: Text('New group'),
                      ),
                      PopupMenuItem(
                        child: Text('New broadcast'),
                      ),
                      PopupMenuItem(
                        child: Text('Linked Devices'),
                      ),
                      PopupMenuItem(
                        child: Text('Starred messages'),
                      ),
                      PopupMenuItem(
                        child: Text('Payments'),
                      ),
                      PopupMenuItem(
                        child: Text('Settings'),
                      ),
                    ];
                  },
                ),
              ],
              bottom: TabBar(
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
                  SizedBox(
                    width: screenWidth * 0.1,
                    child: const Tab(
                      icon: Icon(Icons.groups_rounded),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.3,
                    child: const Tab(
                      text: 'Chats',
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.3,
                    child: const Tab(
                      text: 'Status',
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.3,
                    child: const Tab(
                      text: 'Calls',
                    ),
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
