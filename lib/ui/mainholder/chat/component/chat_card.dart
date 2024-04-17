import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../data/chat.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key, required this.chat});

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(chat.image),
                ),
                title: Text(
                  chat.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
                subtitle: Text(chat.content),
                contentPadding: EdgeInsets.all(0),
              ),
            ),
            Column(
              children: [
                Text(
                  chat.time,
                  style: TextStyle(
                    color: Color(0xFFa5a5a), fontSize: 12
                  ),
                ),
                SizedBox(height: 5),
                if (chat.count != "0")
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFde6344)
                    ),
                    child: Text(
                      chat.count,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      ),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
