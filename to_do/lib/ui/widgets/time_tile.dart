import 'package:flutter/material.dart';

class TimeTile extends StatelessWidget {
  final String time;
  const TimeTile({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        time,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Color(0xff525C77),
        ),
      ),
    );
  }
}
