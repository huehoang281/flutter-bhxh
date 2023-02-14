import 'package:baohiemyte/screens/helpScreen.dart';
import 'package:baohiemyte/screens/searchScreen.dart';
import 'package:flutter/material.dart';

import '../const/colors.dart';
// import '../screens/HomeScreen.dart';
import '../screens/homeScreen.dart';
import '../screens/noteScreen.dart';
import '../utils/helper.dart';


class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key, required this.home, required this.tab1, required this.tab2, required this.tab3}) : super(key: key);
  final bool home;
  final bool tab1;
  final bool tab2;
  final bool tab3;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              width: Helper.getScreenWidth(context),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (!home) {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        home
                            ? Icon(Icons.person, size: 30, color: AppColor.blue,)
                            : Icon(Icons.person, size: 30, ),
                        Text("QL cá nhân"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!tab1) {
                        Navigator.of(context)
                            .pushReplacementNamed(NoteScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        tab1
                            ? Icon(Icons.event_note_outlined, size: 30, color: AppColor.blue,)
                            : Icon(Icons.event_note_outlined, size: 30, ),
                        Text("Dịch vụ công"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!tab2) {
                        Navigator.of(context)
                            .pushReplacementNamed(SearchScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        tab2
                            ? Icon(Icons.travel_explore_outlined, size: 30, color: AppColor.blue,)
                            : Icon(Icons.travel_explore_outlined, size: 30, ),
                        Text("Tra cứu"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!tab3) {
                        Navigator.of(context)
                            .pushReplacementNamed(HelpScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        tab3
                            ? Icon(Icons.headset_mic_outlined, size: 30, color: AppColor.blue,)
                            : Icon(Icons.headset_mic_outlined, size: 30, ),
                        Text("Trợ giúp"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

