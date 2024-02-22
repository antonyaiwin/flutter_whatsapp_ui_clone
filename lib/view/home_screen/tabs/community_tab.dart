import 'package:flutter/material.dart';

class CommunityTab extends StatelessWidget {
  const CommunityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 100, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/community_clipart.png'),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Stay connected with a community',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Text(
            'Communities bring members together in topic-based groups,  and make it easy to get admin anoouncements. Any community you\'re added to will appear here.',
            textAlign: TextAlign.center,
          ),
          TextButton.icon(
            onPressed: () {},
            label: const Icon(Icons.keyboard_arrow_right),
            icon: const Text('See example communities'),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Start your community'),
            ),
          ),
        ],
      ),
    );
  }
}
