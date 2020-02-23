import 'package:flutter/material.dart';

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
