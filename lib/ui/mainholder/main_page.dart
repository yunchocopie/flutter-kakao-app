import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'chat/chat_page.dart';
import 'friend/friend_page.dart';
import 'more/more_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          FriendPage(),
          ChatPage(),
          MorePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        // label 안 뜨게
        showUnselectedLabels: false,
        // 클릭할 때만 label 뜨게
        currentIndex: _selectedIndex,
        // 클릭한 버튼 색 바뀌게
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ""),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.comment), label: ""),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.ellipsis), label: ""),
        ],
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
      ),
    );
  }
}
