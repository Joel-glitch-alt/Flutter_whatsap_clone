import 'package:flutter/material.dart';
import 'package:watsap/info.dart';
import 'package:watsap/widgets/chatList.dart';

import '../colors.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(31, 44, 52, 1),
        title: Text(
          info[0]["name"].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[100],
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Icon(Icons.emoji_emotions, color: Colors.grey),
              ),
              //
              suffixIcon: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.camera_alt, color: Colors.grey),
                    Icon(Icons.attach_file, color: Colors.grey),
                    Icon(Icons.money, color: Colors.grey),
                  ],
                ),
              ),
              hintText: "Type your message here...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
