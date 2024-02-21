import 'package:flutter/material.dart';
import 'package:flutter_application_9/data/dummy/dummy_db.dart';
import 'package:flutter_application_9/widgets/chat_list_item.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 100, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recent',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            itemCount: DummyDb.dummyCallList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ChatListItem(
                dataItemMap: DummyDb.dummyCallList[index],
                tileType: TileType.call,
              );
            },
          )
        ],
      ),
    );
  }
}
