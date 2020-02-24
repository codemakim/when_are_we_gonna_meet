import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/common/ThemeInfo.dart';
import 'package:when_are_we_gonna_meet/ui/screens/AddGroupPage.dart';
import 'package:when_are_we_gonna_meet/ui/screens/FriendListPage.dart';
import 'package:when_are_we_gonna_meet/ui/screens/GroupDetailPage.dart';

/// # MainPage.dart
/// 메인페이지를 출력하기 위한 위젯 클래스입니다. 메인 페이지는 그룹 목록 표시,
/// 그룹 생성 페이지, 친구 목록 페이지 이동 버튼이 표시되는 화면입니다.
///
/// ## Author: jhkim
/// ## Date: 2020.02.17
class MainPage extends StatelessWidget {
  final int flag = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '언제 만나?',
          style: TextStyle(color: ThemeInfo().getThemeTextColor()),
        ),
        actions: <Widget>[
          IconButton(
            tooltip: '그룹 추가 화면으로 이동',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddGroupPage(),
                  ));
            },
            icon: Icon(
              Icons.add,
            ),
          ),
          IconButton(
            tooltip: '친구 목록 화면으로 이동',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => FriendListPage(),
              ));
            },
            icon: Icon(Icons.list),
          ),
        ],
      ),
      body: flag == 0 ? emptyGroup(context) : haveGroup(context),
    );
  }
}

/// 아무런 그룹을 만들지 않았을 경우 메인화면에 표시되는 위젯입니다.
///
/// parameter [BuildContext] context
/// return [Widget]
Widget emptyGroup(BuildContext context) {
  return Center(
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.15,
        vertical: MediaQuery.of(context).size.height * 0.3,
      ),
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              '일정이 없군요.',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                color: ThemeInfo().getThemeColor(),
                padding: EdgeInsets.all(15.0),
                onPressed: () {
                  // TODO 일정 추가 화면으로 이동해야합니다.
                },
                child: Text(
                  '일정 만들기',
                  style: TextStyle(
                    fontSize: 20,
                    color: ThemeInfo().getThemeTextColor(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

/// 그룹이 있는 경우, 그룹 목록을 보여주는 위젯입니다.
///
/// parameter [BuildContext] context
/// return [Widget]
Widget haveGroup(BuildContext context) {
  return ListView(
    padding: EdgeInsets.all(8.0),
    children: <Widget>[
      ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GroupDetailPage(),
              ));
          print('Pressed Item of ListView 0');
        },
        title: Text('Item of ListView 0'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        onTap: () {
          print('Pressed Item of ListView 1');
        },
        title: Text('Item of ListView 1'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        onTap: () {
          print('Pressed Item of ListView 2');
        },
        title: Text('Item of ListView 2'),
        trailing: Icon(Icons.arrow_forward),
      ),
    ],
  );
}
