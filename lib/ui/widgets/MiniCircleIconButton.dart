import 'package:flutter/material.dart';

///
/// 용도를 아이콘만으로 판단하는 동그란 버튼을 만들기 위한 위젯입니다.
/// ## Author
/// * jhkim
///
/// ## Date
/// * 2020.02.17
///
/// ## Options
///
/// ### color
/// * Parameter Type - Color
/// * 버튼의 색상을 지정합니다. ex) Colors.red
///
/// ### size:
/// * Parameter Type - double
/// * 버튼의 사이즈를 지정합니다. ex) 50 or 60.5 or ...
///
/// ### icon:
/// * Parameter Type - Icon
/// * 표시할 아이콘을 지정합니다. ex) Icon( Icons.add )
///
/// ### size:
/// * Parameter Type - Function
/// * 탭을 할 경우 실행할 함수를 지정합니다. ex)  () {}
///
class MiniCircleIconButton extends StatelessWidget {
  final Color color;
  final double size;
  final Icon icon;
  final Function onTap;

  MiniCircleIconButton(
      {@required this.color,
      @required this.size,
      @required this.icon,
      @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: this.color,
        child: InkWell(
          onTap: this.onTap,
          splashColor: Colors.grey,
          child: Container(
            width: this.size,
            height: this.size,
            child: this.icon,
          ),
        ),
      ),
    );
  }
}
