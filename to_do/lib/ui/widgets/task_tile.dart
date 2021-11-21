import 'package:flutter/material.dart';
import 'package:to_do/ui/widgets/button_task_complete.dart';
import 'package:to_do/ui/widgets/task_card.dart';

class TaskTile extends StatelessWidget {
  final double marginTop;
  final double cardHeight;
  final String cardTitle;
  final String cardTimeStart;
  final String cardTimeEnd;
  final Color cardTitleColor;
  final Color cardTimeColor;
  final Color cardBackgroundColor;
  final Color buttonTextColor;
  final Color buttonBackgroundColor;
  const TaskTile({
    Key? key,
    this.marginTop: 0,
    this.cardHeight = 51,
    required this.cardTitle,
    required this.cardTimeStart,
    required this.cardTimeEnd,
    this.cardTitleColor = const Color(0xff0442D0),
    this.cardTimeColor = const Color(0xff0442D0),
    this.cardBackgroundColor = const Color(0xffDBE6FF),
    this.buttonTextColor = const Color(0xffFB3453),
    this.buttonBackgroundColor = const Color(0xffFEEAEB),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 100,
        top: marginTop,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TaskCard(
            cardHeight: cardHeight,
            cardTitle: cardTitle,
            cardTimeStart: cardTimeStart,
            cardTimeEnd: cardTimeEnd,
            cardBackgroundColor: cardBackgroundColor,
            cardTitleColor: cardTitleColor,
            cardTimeColor: cardTimeColor,
          ),
          SizedBox(
            width: 10,
          ),
          ButtonTaskComplete(
            buttonTextColor: buttonTextColor,
            buttonBackgroundColor: buttonBackgroundColor,
          ),
        ],
      ),
    );
  }
}
