import 'package:flutter/material.dart';
import 'package:flutter_application_9/data/dummy/dummy_db.dart';
import 'package:flutter_application_9/widgets/chat_list_item.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 100),
        itemBuilder: (context, index) {
          return ChatListItem(
            dataItemMap: DummyDb.dummyChatList[index],
            tileType: TileType.chat,
          );
        },
        itemCount: DummyDb.dummyChatList.length);
  }
}
