import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_28/utils/extensions.dart';
import 'package:lesson_28/utils/sizes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(100, 690),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    //? qurilma qay holatda turganini bildiradi.
    //? PORTRAIT - vertical
    //? LANDSCAPE - horizontal
    Orientation orientation = MediaQuery.of(context).orientation;

    //? Qurilmani qaysi rejimda ishlayotganini bildiradi
    //? LIGHT - Kunduzgi rejim
    //? DARK - Tungi rejim
    Brightness brightness = MediaQuery.of(context).platformBrightness;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            brightness == Brightness.dark ? Colors.black : Colors.white,
        title: Text(
          1.0.ww(context).toString(),
          style: TextStyle(
            color: brightness == Brightness.dark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // orientation == Orientation.landscape ? RowBoxes() : ColumnBoxes(),
              Container(
                width: SizeUtils.screenWidth(context),
                height: SizeUtils.screenHeight(context) * 0.5,
                color: Colors.blue,
              ),
              10.height(),
              Container(
                width: SizeUtils.screenWidth(context),
                height: SizeUtils.screenHeight(context) * 0.5,
                color: Colors.red,
              ),
              20.height(),
              Container(
                width: context.width(),
                height: SizeUtils.screenHeight(context) * 0.5,
                color: Colors.orange,
              ),
              20.width(),
              Container(
                width: context.width(),
                height: context.height() * 0.5,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
