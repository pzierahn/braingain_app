import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/chat/chat.dart';
import 'package:braingain_app/ui/page/collection/collection_page.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
    required this.collection,
  });

  final Collections_Collection collection;

  static Future<void> open(
      BuildContext context, Collections_Collection collection) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChatPage(collection: collection),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(collection.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.description_outlined),
            tooltip: 'Documents',
            onPressed: () {
              CollectionPage.open(context, collection);
            },
          ),
        ],
      ),
      body: Chat(
        collection: collection,
      ),
    );
  }
}
