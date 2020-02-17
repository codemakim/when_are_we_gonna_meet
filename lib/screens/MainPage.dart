import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:when_are_we_gonna_meet/screens/widgets/MiniCircleIconButton.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('언제 만나?'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: MiniCircleIconButton(
                size: 60,
                icon: Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                ),
                color: Colors.red,
                onTap: () {
                  print('Pressed button for signin with google!');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: MiniCircleIconButton(
                size: 60,
                icon: Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                ),
                color: Colors.indigo,
                onTap: () {
                  print('Pressed button for signin with facebook!');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
