import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final double cardHeight;
  final String cardTitle;
  final String cardTimeStart;
  final String cardTimeEnd;
  final Color cardTitleColor;
  final Color cardTimeColor;
  final Color cardBackgroundColor;
  const TaskCard({
    Key? key,
    this.cardHeight = 51,
    required this.cardTitle,
    required this.cardTimeStart,
    required this.cardTimeEnd,
    this.cardTitleColor = const Color(0xff0442D0),
    this.cardTimeColor = const Color(0xff0442D0),
    this.cardBackgroundColor = const Color(0xffDBE6FF),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106,
      height: cardHeight,
      padding: EdgeInsets.only(top: 5, left: 8, right: 7, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: cardBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  cardTitle,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: cardTitleColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Image.asset(
                  'assets/icon_horizontal_three_dot.png',
                  width: 2,
                  height: 10,
                  color: cardTitleColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '$cardTimeStart - $cardTimeEnd',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w300,
              color: cardTimeColor,
            ),
          )
        ],
      ),
    );
  }
}
