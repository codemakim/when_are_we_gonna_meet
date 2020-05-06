import 'package:flutter/material.dart';
import 'package:when_are_we_gonna_meet/ui/screens/ScheduleDetailPage.dart';

/// # ScheduleListTile.dart
/// 일정 목록 아이템 위젯
///
/// ## Author jhkim
/// ## Date 2020.02.27
class ScheduleListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('일정 목록 제목'),
        subtitle: Text(
          '친구1, 친구2, 친구3, 친구4, 친구5, 친구6 ...',
        ),
        trailing: Text(
          '6/12 명',
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScheduleDetailPage(),
            ),
          );
        },
      ),
    );
  }
}
