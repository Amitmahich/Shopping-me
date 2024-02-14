import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_me/utils/app-constant.dart';

class MyMainScreen extends StatefulWidget {
  const MyMainScreen({super.key});

  @override
  State<MyMainScreen> createState() => _MyMainState();
}

class _MyMainState extends State<MyMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppConstant.appSecondaryColor,
          statusBarBrightness: Brightness.light

        ),
        backgroundColor: AppConstant.appMainColor,

        title: Text(AppConstant.appMainName),
        centerTitle: true,
      ),
    );
  }
}
