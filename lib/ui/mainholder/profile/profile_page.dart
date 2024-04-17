import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../../data/user.dart';
import 'component/bottom_icon_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(user.backgroundImage),
            fit: BoxFit.fitHeight
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Spacer(),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(user.backgroundImage),
                  fit: BoxFit.cover
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              user.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5),
            Text(
              user.intro,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              maxLines: 1,
            ),
            SizedBox(height: 20),
            Divider(color: Colors.white),
            if (user.name == me.name) _buildMyIcons() else _buildFriendIcons()
          ],
        ),
      ),
    );
  }

  Padding _buildFriendIcons() {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomIconButton(
                    icon: FontAwesomeIcons.comment,
                    text: "1:1 채팅"
                ),
                SizedBox(width: 50),
                BottomIconButton(
                    icon: FontAwesomeIcons.phone,
                    text: "통화하기"
                ),
              ],
            ),
          );
  }

  Padding _buildMyIcons() {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomIconButton(
                  icon: FontAwesomeIcons.comment,
                  text: "나와의 채팅"
                ),
                SizedBox(width: 50),
                BottomIconButton(
                  icon: FontAwesomeIcons.pen,
                  text: "프로필 편집"
                ),
              ],
            ),
          );
  }
}
