import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  final String day;
  final int date;
  final bool haveTask;
  final bool isActive;
  const DateCard({
    Key? key,
    required this.day,
    required this.date,
    this.haveTask = false,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 33,
      height: 83,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isActive ? Color(0xff0442D0) : Color(0xffF0F3F8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          haveTask
              ? Image.asset(
                  'assets/icon_dot.png',
                  width: 7,
                )
              : SizedBox(
                  height: 7,
                ),
          SizedBox(
            height: 7,
          ),
          Text(
            day,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isActive ? Color(0xffFFFFFF) : Color(0xff596279),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            date.toString(),
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: isActive ? Color(0xffFFFFFF) : Color(0xff7F8A9C),
            ),
          )
        ],
      ),
    );
  }
}
