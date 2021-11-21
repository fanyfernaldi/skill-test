import 'package:flutter/material.dart';
import 'package:to_do/services/google_signin_service.dart';
import 'package:to_do/ui/widgets/dash_tile.dart';
import 'package:to_do/ui/widgets/date_card.dart';
import 'package:to_do/ui/widgets/task_tile.dart';
import 'package:to_do/ui/widgets/time_tile.dart';

class TaskPage extends StatelessWidget {
  final GoogleSignInService model;
  const TaskPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        height: 108,
        padding: EdgeInsets.only(
          top: 37,
          left: 18,
          right: 18,
          bottom: 15,
        ),
        color: Color(0xff0442D0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                model.googleAccount!.photoUrl.toString(),
              ),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, ${model.googleAccount!.displayName ?? ''}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  '2 Task for Today',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color(0xffFABE2C),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget dateTitle() {
      return Container(
        margin: EdgeInsets.only(top: 18, left: 16, right: 16),
        child: Text(
          'Sun, Sept 14 2020',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff0442D0)),
        ),
      );
    }

    Widget chooseDate() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 16),
              Row(
                children: [
                  DateCard(day: 'S', date: 14, haveTask: true, isActive: true),
                  DateCard(day: 'M', date: 15),
                  DateCard(day: 'T', date: 16),
                  DateCard(day: 'W', date: 17, haveTask: true),
                  DateCard(day: 'T', date: 18, haveTask: true),
                  DateCard(day: 'F', date: 19),
                  DateCard(day: 'S', date: 20),
                  DateCard(day: 'S', date: 21, haveTask: true),
                  DateCard(day: 'M', date: 22),
                  DateCard(day: 'T', date: 23),
                  DateCard(day: 'W', date: 24),
                  DateCard(day: 'T', date: 25),
                  DateCard(day: 'F', date: 26),
                  DateCard(day: 'S', date: 27),
                  DateCard(day: 'S', date: 28),
                  DateCard(day: 'M', date: 29),
                  DateCard(day: 'T', date: 30),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget divider() {
      return Container(
        margin: EdgeInsets.only(
          top: 22,
          left: 8,
          right: 14,
        ),
        child: Divider(
          thickness: 1,
          color: Color(0xffEDF0F7),
        ),
      );
    }

    Widget taskListTitle() {
      return Container(
        margin: EdgeInsets.only(top: 18, left: 16, right: 16),
        child: Text(
          'Task List',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xff525C77),
          ),
        ),
      );
    }

    Widget taskList() {
      return Expanded(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18),
          children: [
            Stack(
              children: [
                Container(
                  height: 2160.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      DashTile(),
                      TimeTile(time: '01.00'),
                      DashTile(),
                      TimeTile(time: '02.00'),
                      DashTile(),
                      TimeTile(time: '03.00'),
                      DashTile(),
                      TimeTile(time: '04.00'),
                      DashTile(),
                      TimeTile(time: '05.00'),
                      DashTile(),
                      TimeTile(time: '06.00'),
                      DashTile(),
                      TimeTile(time: '07.00'),
                      DashTile(),
                      TimeTile(time: '08.00'),
                      DashTile(),
                      TimeTile(time: '09.00'),
                      DashTile(),
                      TimeTile(time: '10.00'),
                      DashTile(),
                      TimeTile(time: '11.00'),
                      DashTile(),
                      TimeTile(time: '12.00'),
                      DashTile(),
                      TimeTile(time: '13.00'),
                      DashTile(),
                      TimeTile(time: '14.00'),
                      DashTile(),
                      TimeTile(time: '15.00'),
                      DashTile(),
                      TimeTile(time: '16.00'),
                      DashTile(),
                      TimeTile(time: '17.00'),
                      DashTile(),
                      TimeTile(time: '18.00'),
                      DashTile(),
                      TimeTile(time: '19.00'),
                      DashTile(),
                      TimeTile(time: '20.00'),
                      DashTile(),
                      TimeTile(time: '21.00'),
                      DashTile(),
                      TimeTile(time: '22.00'),
                      DashTile(),
                      TimeTile(time: '23.00'),
                      DashTile(),
                      SizedBox(),
                    ],
                  ),
                ),
                TaskTile(
                  marginTop: 90 * 9,
                  cardTitle: 'Daily Stand Up',
                  cardTimeStart: '09.00',
                  cardTimeEnd: '09.30',
                ),
                TaskTile(
                  marginTop: 90 * 10,
                  cardHeight: 111,
                  cardTitle: 'Meeting Client A',
                  cardTimeStart: '10.00',
                  cardTimeEnd: '11.15',
                  cardTitleColor: Color(0xffFF9124),
                  cardTimeColor: Color(0xffFF9124),
                  cardBackgroundColor: Color(0xffFFF2E5),
                  buttonTextColor: Color(0xffD3D5DB),
                  buttonBackgroundColor: Color(0xffF0F3F8),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget bottomNavigationSpace() {
      return SizedBox(
        height: 83,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header(),
        dateTitle(),
        chooseDate(),
        divider(),
        taskListTitle(),
        taskList(),
        bottomNavigationSpace(),
      ],
    );
  }
}
