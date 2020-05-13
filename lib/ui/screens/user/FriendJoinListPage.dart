import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/ui/widgets/UserListTile.dart';

class FriendJoinListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '참여 중인 친구',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
                UserListTile(),
              ],
            ),
          )
        ],
      ),
    );
  }

}