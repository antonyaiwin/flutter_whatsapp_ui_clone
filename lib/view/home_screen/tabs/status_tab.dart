import 'package:flutter/material.dart';
import 'package:flutter_application_9/data/dummy/dummy_db.dart';
import 'package:flutter_application_9/widgets/chat_list_item.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Status',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.more_vert),
            ],
          ),
          ChatListItem(
              dataItemMap: DummyDb.dummyMyStatusMap,
              tileType: TileType.myStatus),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Recent updates',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                fontSize: 13),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: DummyDb.dummyStatusList.length,
            itemBuilder: (context, index) {
              return ChatListItem(
                dataItemMap: DummyDb.dummyStatusList[index],
                tileType: TileType.status,
              );
            },
          )
        ],
      ),
    );
  }
}
