import 'package:flutter/material.dart';
import 'package:lesson_28/utils/sizes.dart';

class ColumnBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: SizeUtils.screenWidth(context),
          height: SizeUtils.screenHeight(context) * 0.5,
          color: Colors.blue,
        ),
        Container(
          width: SizeUtils.screenWidth(context),
          height: SizeUtils.screenHeight(context) * 0.5,
          color: Colors.red,
        ),
        Container(
          width: SizeUtils.screenWidth(context),
          height: SizeUtils.screenHeight(context) * 0.5,
          color: Colors.orange,
        ),
        Container(
          width: SizeUtils.screenWidth(context),
          height: SizeUtils.screenHeight(context) * 0.5,
          color: Colors.black,
        ),
      ],
    );
  }
}
