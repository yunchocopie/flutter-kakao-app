import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_app/ui/mainholder/chat/component/chat_card.dart';

import '../../../data/chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("채팅"),
      ),
      body: ListView(
        children: List.generate(
              chats.length,
                  (index) => ChatCard(chat: chats[index],)
          )

      ),
    );
  }
}