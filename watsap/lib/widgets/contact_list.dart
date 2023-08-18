import 'package:flutter/material.dart';
import 'package:watsap/colors.dart';
import 'package:watsap/info.dart';
import 'package:watsap/screens/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MobileChatScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    title: Text(
                      info[index]["name"].toString(),
                      style: const TextStyle(fontSize: 18, color: Colors.amber),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        info[index]["message"].toString(),
                        style:
                            const TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]["profilePic"].toString(),
                      ),
                      radius: 35,
                    ),
                    trailing: Text(
                      info[index]["time"].toString(),
                      style: TextStyle(color: Colors.grey[500], fontSize: 10),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.black,
                indent: 90,
              )
            ],
          );
        },
      ),
    );
  }
}
