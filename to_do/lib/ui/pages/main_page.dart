import 'package:flutter/material.dart';
import 'package:to_do/services/google_signin_service.dart';
import 'package:to_do/ui/pages/setting_page.dart';
import 'package:to_do/ui/pages/task_page.dart';
import 'package:to_do/ui/widgets/custom_navigation_item.dart';

class MainPage extends StatelessWidget {
  final GoogleSignInService model;
  const MainPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int currentIndex = 0;

    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return TaskPage(
            model: model,
          );
        case 1:
          return SettingPage();
        default:
          return TaskPage(
            model: model,
          );
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 83,
          decoration: BoxDecoration(color: Color(0xffFFFFFF)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomNavigationItem(
                index: 0,
                imageUrl: 'assets/icon_task.png',
                label: 'Task',
                colorItem: Color(0xff0442D0),
              ),
              Container(
                width: 52,
                height: 52,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff0442D0),
                ),
                child: Image.asset(
                  'assets/icon_plus.png',
                  width: 29,
                  color: Color(0xffFFFFFF),
                ),
              ),
              CustomNavigationItem(
                index: 0,
                imageUrl: 'assets/icon_setting.png',
                label: 'Setting',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFBFCFF),
      body: Stack(
        children: [
          buildContent(currentIndex),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
