import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:when_are_we_gonna_meet/ui/widgets/MiniCircleIconButton.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('언제 만나?'),
      ),
      body: emptyTargetSchedule(context),
    );
  }
}


/// 아무런 스캐줄을 만들지 않았을 경우 메인화면에 표시되는 컨테이너입니다.
Widget emptyTargetSchedule(BuildContext context) {
  return Center(
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width*0.15,
        vertical: MediaQuery.of(context).size.height*0.3,
      ),
      child: FlatButton(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 3,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )
          ),
          child: Column(
            children: <Widget>[
              Text(
                '일정이 없군요.',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              MaterialButton(
                color: Colors.indigo,
                padding: EdgeInsets.all(10.0),
                onPressed: () {
                  // TODO 일정 추가 화면으로 이동해야합니다.
                },
                child: Text(
                  '일정 만들기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          print('하하');
        },
      ),
    ),
  );
}
