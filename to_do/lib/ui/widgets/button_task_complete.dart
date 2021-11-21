import 'package:flutter/material.dart';

class ButtonTaskComplete extends StatelessWidget {
  final Color buttonTextColor;
  final Color buttonBackgroundColor;
  const ButtonTaskComplete({
    Key? key,
    this.buttonTextColor = const Color(0xffFB3453),
    this.buttonBackgroundColor = const Color(0xffFEEAEB),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81,
      height: 25,
      padding: EdgeInsets.only(
        top: 6,
        left: 12,
        bottom: 7,
        right: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: buttonBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/icon_check.png',
            width: 9,
            height: 6,
            color: buttonTextColor,
          ),
          Text(
            'Complete',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: buttonTextColor,
            ),
          )
        ],
      ),
    );
  }
}
