import 'package:flutter/material.dart';
import 'package:watsap/colors.dart';
import 'package:watsap/widgets/contact_list.dart';

import '../widgets/chatList.dart';
import '../widgets/webProfileBar.dart';
import '../widgets/webchatappBar.dart';
import '../widgets/websearchBar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          //
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "data:image/jpeg;base64,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"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                WebChatAppBar(),
                Expanded(child: ChatList()),
                // Message input Box
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      ),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_emotions,
                            color: Colors.grey),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.attach_file, color: Colors.grey),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: "Type a message",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(left: 20),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mic, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
