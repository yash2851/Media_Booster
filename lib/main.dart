import 'dart:ui';

import 'HomePage.dart';
import 'Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<HomeScreenProvider>(
          create: (context) => HomeScreenProvider())
    ],
    child: MaterialApp(
      // routes: {
      //   '/': (context) => HomePage(),
      // },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.white.withOpacity(0.5)),
      ),
      home: HomePage(),
    ),
  ));
}

Color lightColor = Color.fromARGB(255, 83, 52, 15);
Color darkColor = Color(0xffD8C4B6);
Color whitecolor = Color(0xff344055);
