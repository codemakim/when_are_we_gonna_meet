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
class GroupDetailPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /// 그룹 명을 표시하기 위한 컨테이너입니다.
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Text(
              '그룹 이름',
              style: TextStyle(fontSize: 25),
            ),
          ),

          /// 해당 그룹에 참가한 인원 목록을 표시하기 위한 위넷입니다.
          Container(
            height: MediaQuery.of(context).size.height * 0.33,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  '참여 중인 친구 목록',
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(8.0),
                    children: <Widget>[
                      Card(
                        child: ListTile(
                          title: Text('친구명 1'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('친구명 2'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('친구명 3'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('친구명 4'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('친구명 5'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// 그룹의 일정 목록을 표시하기 위한 위젯입니다.
          Expanded(
            child: Container(
              //height: MediaQuery.of(context).size.height * 0.385,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    '일정 목록',
                    style: TextStyle(fontSize: 20),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.all(8.0),
                      children: <Widget>[
                        Card(
                          child: ListTile(
                            title: Text('일정 목록 제목'),
                            subtitle: Text(
                              '친구1, 친구2, 친구3, 친구4, 친구5, 친구6 ...',
                            ),
                            trailing: Text(
                              '6/12 명',
                            ),
                            onTap: () {
                              print('일정 아이템 탭');
                            },
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text('일정 목록 1'),
                            subtitle: Text(
                              '친구1, 친구2, 친구3, 친구4, 친구5, 친구6 ...',
                            ),
                            trailing: Text(
                              '6/12 명',
                            ),
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
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: '일정 추가하기',
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
