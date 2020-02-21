import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/common/ThemeInfo.dart';
import 'package:when_are_we_gonna_meet/ui/screens/GroupDetailPage.dart';

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
      ),
      body: flag == 0 ? emptyGroup(context) : haveGroup(context),
    );
  }
}

/// 아무런 그룹을 만들지 않았을 경우 메인화면에 표시되는 위젯입니다.
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
