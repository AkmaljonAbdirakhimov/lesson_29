import 'package:flutter/material.dart';

class SizeUtils {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    double appBarHeight = AppBar().preferredSize.height; //? AppBar balandligi
    double statusBarHeight =
        MediaQuery.of(context).viewPadding.top; //? status bar balandligi
    double screenHeight = MediaQuery.of(context).size.height -
        appBarHeight -
        statusBarHeight; //? ekranning bo'yi

    return screenHeight;
  }
}
