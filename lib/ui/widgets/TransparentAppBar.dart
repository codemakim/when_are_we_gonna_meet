import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/common/ThemeInfo.dart';

/// # TransparentAppBar.dart
/// 반복되는 AppBar 생성 코드를 재사용하기 위한 클래스입니다.
/// ## Author jhkim
/// ## Date 2020.05.07
class TransparentAppBar extends StatelessWidget {
  final String title;

  TransparentAppBar({
    @required this.title
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: ThemeInfo().getThemeColor()
      ),
      title: Text(
        this.title,
        style: TextStyle(
          color: ThemeInfo().getThemeColor()
        ),
      ),
    );
  }
}