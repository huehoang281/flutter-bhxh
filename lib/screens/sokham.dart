import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class Sokham extends StatefulWidget {
  const Sokham({Key? key}) : super(key: key);
  static const routeName = "/sokham";

  @override
  State<Sokham> createState() => _SokhamState();
}

class _SokhamState extends State<Sokham> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Container(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: <Widget>[
                  Text("SỔ KHÁM BỆNH"),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child:
              Column(
                children: [
                  Image.asset(
                    Helper.getAssetName("signin.png", "real"),
                    fit: BoxFit.cover,height: 50,
                    width: 30,
                  ),
                  Text("Hoang Thi Hue",style: TextStyle(color: Colors. white),),
                  Text("6622439237",style: TextStyle(color: Colors. white),),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
                child: Container(
                  width: Helper.getScreenWidth(context),
                  height: Helper.getScreenHeight(context),
                  child: Column(

                  ),
                )
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                home: true,
                tab1: false,
                tab2: false,
                tab3: false,
              )),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard(
      {Key? key,
        required Widget image,
        required String name,
      })
      : _name = name,
        _image = image,
        super(key: key);

  final Widget _image;
  final String _name;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Helper.getScreenWidth(context)-30,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: <Widget>[
              _image,
              SizedBox(width: 30,),
              Text(_name),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
              ),
            ],
          ),
        )
    );
  }
}



