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

class _AddGroupPageState extends State<AddGroupPage> {
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

              /// 참여자 검색
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: '참여자 검색',
                      ),
                      controller: _searchUserTextController,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return showSearchUserDialog(
                              context, _searchUserTextController.text);
                        },
                      );
                    },
                    icon: Icon(Icons.search),
                  ),
                ],
              ),

              FlatButton(
                color: ThemeInfo().getThemeColor(),
                textColor: ThemeInfo().getThemeTextColor(),
                child: Text(
                  '추가하기',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  // TODO 그룹 추가 버튼 동작 작성
                  print('Pressed Button!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 친구 검색 및 추가를 위한 팝업창 위젯입니다.
/// parameter [String]
/// return [Widget]
Widget showSearchUserDialog(BuildContext context, String text) {
  return text.trim().length <= 0
      ? AlertDialog(
          content: Text(
            '검색하고자 하는 사용자의 \n이름을 입력해주세요.',
            textAlign: TextAlign.center,
          ),
        )
      : AlertDialog(
          content: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.7,
            //padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(5.0),
                    children: <Widget>[
                      Card(
                        child: Text('검색 결과 1'),
                      ),
                    ],
                  ),
                ),
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
