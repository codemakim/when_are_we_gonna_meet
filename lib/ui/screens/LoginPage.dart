import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:when_are_we_gonna_meet/ui/screens/MainPage.dart';
import 'package:when_are_we_gonna_meet/ui/widgets/MiniCircleIconButton.dart';

/// LoginPage.dart
/// 로그인 화면을 표시하기 위한 위젯 클래스입니다.
/// ## Author: jhkim
/// ## Date: 2020.02.17
class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          /// 상단 로고 컨테이너
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
            child: Text(
              '언제만나?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),

          /// 로그인 안내 문구 컨테이너
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              '다음 플랫폼을 이용해 로그인',
              style: TextStyle(fontSize: 20),
            ),
          ),

          /// 소셜 로그인 버튼 컨테이너
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /// 구글 로그인 버튼
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MiniCircleIconButton(
                    size: 60,
                    icon: Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                    color: Colors.red,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(),
                          ));
                    },
                  ),
                ),

                /// 페이스북 로그인 버튼
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MiniCircleIconButton(
                    size: 60,
                    icon: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                    ),
                    color: Colors.indigo,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(),
                          ));
                    },
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
