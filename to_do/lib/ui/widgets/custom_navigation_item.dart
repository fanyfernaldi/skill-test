import 'package:flutter/material.dart';

class CustomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String label;
  final Color colorItem;
  const CustomNavigationItem({
    Key? key,
    required this.index,
    required this.imageUrl,
    required this.label,
    this.colorItem = const Color(0xff7F8A9C),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 20,
            color: colorItem,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: colorItem,
            ),
          )
        ],
      ),
    );
  }
}
