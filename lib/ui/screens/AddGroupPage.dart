import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/common/ThemeInfo.dart';

/// # AddGroupPage.dart
/// 그룹 생성 화면을 위한 위젯 클래스입니다.
///
/// ## Author jhkim
/// Date 2020.02.23
class AddGroupPage extends StatefulWidget {
  @override
  _AddGroupPageState createState() => _AddGroupPageState();
}

class _AddGroupPageState extends State<AddGroupPage>
    with SingleTickerProviderStateMixin {
  final Key _addGroupFormKey = GlobalKey<FormState>();
  final _groupNameTextController = TextEditingController();
  final _searchUserTextController = TextEditingController();

  @override
  void dispose() {
    _groupNameTextController.dispose();
    _searchUserTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '그룹 추가',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: _addGroupFormKey,
          child: Column(
            children: <Widget>[
              /// 그룹 명
              TextFormField(
                decoration: InputDecoration(
                  labelText: '그룹 이름',
                ),
                controller: _groupNameTextController,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                child: Text(
                  '참여자 추가',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(8.0),
                      color: ThemeInfo().getThemeColor(),
                      textColor: ThemeInfo().getThemeTextColor(),
                      child: Text(
                        '검색으로',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return showSearchUserDialog(
                                context, _searchUserTextController.text);
                          },
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      padding: EdgeInsets.all(8.0),
                      color: ThemeInfo().getThemeColor(),
                      textColor: ThemeInfo().getThemeTextColor(),
                      child: Text(
                        '친구목록에서',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return showAddFriendDialog(context);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 사용자를 검색하여 참여자 목록에 추가하기 위한 팝업창 위젯입니다.
/// parameter [String]
/// return [Widget]
Widget showSearchUserDialog(BuildContext context, String text) {
  return AlertDialog(
    content: Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.7,
      //padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '닉네임 또는 아이디를 입력하세요',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  print('Pressed Search Button');
                },
                icon: Icon(
                  Icons.search
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(5.0),
              children: <Widget>[
                Container(
                  child: Text('검색 결과 1'),
                  height: 100,
                  color: Colors.grey,
                  margin: EdgeInsets.all(5.0),
                ),
                Container(
                  child: Text('검색 결과 1'),
                  height: 100,
                  color: Colors.grey,
                  margin: EdgeInsets.all(5.0),
                ),
                Container(
                  child: Text('검색 결과 1'),
                  height: 100,
                  color: Colors.grey,
                  margin: EdgeInsets.all(5.0),
                ),
                Container(
                  child: Text('검색 결과 1'),
                  height: 100,
                  color: Colors.grey,
                  margin: EdgeInsets.all(5.0),
                ),
                Container(
                  child: Text('검색 결과 1'),
                  height: 100,
                  color: Colors.grey,
                  margin: EdgeInsets.all(5.0),
                ),
              ],
            ),
          ),

          /// 닫기 / 추가 버튼이 들어가는 위젯
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /// 팝업 닫기 버튼
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    '닫기',
                  ),
                  color: ThemeInfo().getThemeColor(),
                  textColor: ThemeInfo().getThemeTextColor(),
                ),
              ),

              /// 참여자 추가 버튼
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    //TODO 참여자 추가 버튼 기능 작성
                    print('팝업 버튼 탭');
                  },
                  child: Text(
                    '추가',
                  ),
                  color: ThemeInfo().getThemeColor(),
                  textColor: ThemeInfo().getThemeTextColor(),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

/// 친구 목록에서 참여자를 선택하여 추가하기 위한 팝업창 위젯입니다.
/// parameter [String]
/// return [Widget]
Widget showAddFriendDialog(BuildContext context) {
  return AlertDialog(
    content: Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.grey,
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.grey,
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.grey,
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.grey,
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.grey,
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.grey,
                  height: 100,
                ),
              ],
            ),
          ),

          /// 닫기 / 추가 버튼이 들어가는 위젯
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /// 팝업 닫기 버튼
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    '닫기',
                  ),
                  color: ThemeInfo().getThemeColor(),
                  textColor: ThemeInfo().getThemeTextColor(),
                ),
              ),

              /// 참여자 추가 버튼
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    //TODO 참여자 추가 버튼 기능 작성
                    print('팝업 버튼 탭');
                  },
                  child: Text(
                    '추가',
                  ),
                  color: ThemeInfo().getThemeColor(),
                  textColor: ThemeInfo().getThemeTextColor(),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
