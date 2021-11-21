import 'package:flutter/material.dart';

class DashTile extends StatelessWidget {
  const DashTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      child: Divider(
        thickness: 0.5,
        color: Color(0xff525C77),
      ),
    );
  }
}
