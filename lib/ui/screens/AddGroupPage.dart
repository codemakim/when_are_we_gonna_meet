import 'package:flutter/material.dart';

/// # AddGroupPage.dart
/// 그룹 생성 화면을 위한 위젯 클래스입니다.
///
/// ## Author jhkim
/// Date 2020.02.23
class AddGroupPage extends StatefulWidget {
  @override
  _AddGroupPageState createState() => _AddGroupPageState();
}

class _AddGroupPageState extends State<AddGroupPage> {
  final searchUserTextFieldController = TextEditingController();

  @override
  void dispose() {
    searchUserTextFieldController.dispose();
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
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '사용자 검색',
                    ),
                    controller: searchUserTextFieldController,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return showSearchUserDialog(searchUserTextFieldController.text);
                      },
                    );
                  },
                  icon: Icon(Icons.search),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// 친구 검색 및 추가를 위한 팝업창 위젯입니다.
/// parameter [String]
/// return [Widget]
Widget showSearchUserDialog(String text) {
  return AlertDialog(
    content: Text(text.trim().length <= 0 ? '사용자 이름을 입력하세요.' : '팝업창 테스트 = $text'),
  );
}
