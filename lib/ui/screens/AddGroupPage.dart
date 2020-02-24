import 'package:flutter/material.dart';

/// # AddGroupPage.dart
/// 그룹 생성 화면을 위한 위젯 클래스입니다.
///
/// ## Author jhkim
/// Date 2020.02.23
class AddGroupPage extends StatelessWidget {
  final GlobalKey _addGroupFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '그룹 추가',
        ),
      ),
      body: Column(
        children: <Widget>[
          Form(
            key: _addGroupFormKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: '그룹 제목'
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
