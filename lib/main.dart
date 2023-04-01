import 'package:baohiemyte/screens/helpScreen.dart';
import 'package:baohiemyte/screens/noteScreen.dart';
import 'package:baohiemyte/screens/searchScreen.dart';
import 'package:baohiemyte/screens/sokham.dart';
import 'package:baohiemyte/screens/thamgia.dart';
import 'package:baohiemyte/screens/theBHYT.dart';
import 'package:baohiemyte/screens/thongtin.dart';

import '../screens/homeScreen.dart';
import 'package:flutter/material.dart';
import './screens/splashScreen.dart';
import './screens/loginScreen.dart';
import './const/colors.dart';

import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline3: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline5: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          headline6: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
      home: SplashScreen(),
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        NoteScreen.routeName: (context) => NoteScreen(),
        SearchScreen.routeName: (context) => SearchScreen(),
        HelpScreen.routeName: (context) => HelpScreen(),
        TheBHYT.routeName: (context) => TheBHYT(),
        Thamgia.routeName: (context) => Thamgia(),
        Thongtin.routeName: (context) => Thongtin(),
        Sokham.routeName: (context) => Sokham(),
      },
    );
  }
}

