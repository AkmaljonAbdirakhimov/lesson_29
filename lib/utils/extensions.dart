import 'package:flutter/material.dart';

extension IntExtensions on int {
  Widget height() {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget width() {
    return SizedBox(
      width: toDouble(),
    );
  }
}

extension DoubleExtensions on double {
  double ww(BuildContext context) {
    return MediaQuery.of(context).size.width * this;
  }
}

extension ContextExtensions on BuildContext {
  double width() {
    return MediaQuery.of(this).size.width;
  }

  double height() {
    double appBarHeight = AppBar().preferredSize.height; //? AppBar balandligi
    double statusBarHeight =
        MediaQuery.of(this).viewPadding.top; //? status bar balandligi
    double screenHeight =
        MediaQuery.of(this).size.height - appBarHeight - statusBarHeight;

    return screenHeight;
  }
}
