import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum TileType {
  chat,
  myStatus,
  status,
  call,
}

class ChatListItem extends StatelessWidget {
  const ChatListItem(
      {super.key, required this.dataItemMap, required this.tileType});
  final Map dataItemMap;
  final TileType tileType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          tileType != TileType.myStatus
              ? Container(
                  padding: tileType == TileType.status
                      ? const EdgeInsets.all(1.6)
                      : null,
                  decoration: tileType == TileType.status
                      ? BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 0, 168, 132),
                              width: 2.5),
                          borderRadius: BorderRadius.circular(50))
                      : null,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(dataItemMap['profile_image']),
                  ),
                )
              : Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage(dataItemMap['profile_image']),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: const Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        dataItemMap['username'],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    tileType == TileType.chat
                        ? Text(
                            dataItemMap['time'],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: dataItemMap['count'] == 0
                                  ? Colors.black54
                                  : Colors.green,
                            ),
                          )
                        : Container(),
                  ],
                ),
                Row(
                  children: [
                    tileType == TileType.call
                        ? Random().nextBool()
                            ? const Icon(
                                Icons.call_made,
                                size: 16,
                                color: Colors.green,
                              )
                            : const Icon(
                                Icons.call_received,
                                size: 16,
                                color: Colors.red,
                              )
                        : Container(),
                    Expanded(
                      child: Text(
                        dataItemMap[tileType == TileType.chat
                            ? 'last_message'
                            : 'time'],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    tileType == TileType.chat
                        ? CircleAvatar(
                            radius: dataItemMap['count'] == 0 ? 0 : 10,
                            child: Text(
                              dataItemMap['count'].toString(),
                              style: const TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ),
          tileType == TileType.call ? const Icon(Icons.videocam) : Container(),
        ],
      ),
    );
  }
}
