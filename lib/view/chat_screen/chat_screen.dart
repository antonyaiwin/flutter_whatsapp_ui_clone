import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.chatItem});

  final Map chatItem;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController messageController = TextEditingController();
  Map get chatItem => widget.chatItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleTextStyle: const TextStyle(fontSize: 19),
        titleSpacing: 4.0,
        title: Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 4.0,
                  right: 4.0,
                  bottom: 4.0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.arrow_back),
                    CircleAvatar(
                      radius: 19,
                      backgroundImage: NetworkImage(chatItem['profile_image']),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(chatItem['username'])
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call_rounded),
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('View contact')),
                const PopupMenuItem(child: Text('Media, links, and docs')),
                const PopupMenuItem(child: Text('Search')),
                const PopupMenuItem(child: Text('Mute notification')),
                const PopupMenuItem(child: Text('Disappearing messages')),
                const PopupMenuItem(child: Text('Wallpaper')),
                const PopupMenuItem(child: Text('More')),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text('data'),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 1)
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_emotions_outlined),
                      ),
                      Expanded(
                        child: TextField(
                          controller: messageController,
                          maxLines: 6,
                          minLines: 1,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            hintText: 'Message',
                          ),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.attach_file),
                      ),
                      if (messageController.text.isEmpty) ...[
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.currency_rupee),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt),
                        )
                      ],
                    ],
                  ),
                ),
              ),
              IconButton.filled(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 168, 132),
                ),
                padding: const EdgeInsets.all(12),
                onPressed: () {},
                icon: Icon(
                  messageController.text.isEmpty ? Icons.mic : Icons.send,
                ),
              ),
              const SizedBox(width: 4),
            ],
          )
        ],
      ),
    );
  }
}
