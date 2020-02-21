import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/common/ThemeInfo.dart';

/// # GroupDetailPage.dart
/// 그룹의 상세 정보를 표시하기 위한 화면입니다.
///
/// ## Author
/// * jhkim
///
/// ##Date
/// * 2020.02.21
///
class GroupDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          /// 그룹 명을 표시하기 위한 컨테이너입니다.
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Text(
              '그룹 이름',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Text(
            '참여 중인 친구 목록',
            style: TextStyle(fontSize: 20),
          ),

          /// 해당 그룹에 참가한 인원 목록을 표시하기 위한 위넷입니다.
          Container(
            margin: EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height * 0.38,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  color: Colors.blueGrey,
                  margin: EdgeInsets.all(8.0),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  color: Colors.blueGrey,
                  margin: EdgeInsets.all(8.0),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  color: Colors.blueGrey,
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('일정 목록 1'),
                  ),
                ),
              ],
            ),
          ),
          Text(
            '일정 목록',
            style: TextStyle(fontSize: 20),
          ),

          /// 그룹의 일정 목록을 표시하기 위한 위젯입니다.
          Container(
            height: MediaQuery.of(context).size.height * 0.385,
            child: ListView(
              children: <Widget>[
                Card(
                  child: ListTile(
                    title: Text('일정 목록 1'),
                    onTap: () {
                      print('일정 아이템 탭');
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('일정 목록 1'),
                    onTap: () {
                      print('일정 아이템 탭');
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('일정 목록 1'),
                    onTap: () {
                      print('일정 아이템 탭');
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('일정 목록 1'),
                    onTap: () {
                      print('일정 아이템 탭');
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('일정 목록 1'),
                    onTap: () {
                      print('일정 아이템 탭');
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('일정 목록 1'),
                    onTap: () {
                      print('일정 아이템 탭');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Pressed on Create Schedule Button');
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

/// 하단의 버튼을 표시하기 위한 위젯입니다.
/// TODO 사용하지 않는 것으로 확정되면 삭제합시다.
Widget bottomButtonsWidget(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            '취소',
            style: TextStyle(fontSize: 25),
          ),
          textColor: ThemeInfo().getThemeColor(),
          padding: EdgeInsets.all(8.0),
          color: Colors.white,
        ),
        RaisedButton(
          onPressed: () {
            print('Pressed on Button');
          },
          child: Text(
            '일정 생성',
            style: TextStyle(fontSize: 25),
          ),
          color: ThemeInfo().getThemeColor(),
          padding: EdgeInsets.all(8.0),
          textColor: Colors.white,
        ),
      ],
    ),
  );
}
