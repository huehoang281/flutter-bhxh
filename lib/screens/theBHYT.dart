import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class TheBHYT extends StatefulWidget {
  const TheBHYT({Key? key}) : super(key: key);
  static const routeName = "/theBHYT";

  @override
  State<TheBHYT> createState() => _TheBHYTState();
}

class _TheBHYTState extends State<TheBHYT> {
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
                  Text("THẺ BẢO HIỂM Y TỂ"),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(color: AppColor.bluelinth),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Helper.getAssetName("signin.png", "real"),
                            fit: BoxFit.cover,height: 50,
                            width: 30,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hoang Thi Hue"),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Mã số BHXH: 6622439238"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 5,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: <Widget>[
                          Text("Ngày sinh"),
                          SizedBox(
                            height: 8,
                          ),
                          Spacer(),
                          Text("29/01/2001"),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 25,
                    thickness: 0.3,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: <Widget>[
                          Text("CCCD/CMND/Hộ chiếu"),
                          SizedBox(
                            height: 8,
                          ),
                          Spacer(),
                          Text("241972651"),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 25,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: <Widget>[
                          Text("Số điện thoại"),
                          SizedBox(
                            height: 8,
                          ),
                          Spacer(),
                          Text("0901933916"),

                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 25,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: <Widget>[
                          Text("Địa chỉ"),
                          SizedBox(
                            height: 8,
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("05, thôn7, Xã CưKBang,"),
                              Text("Huyện EaSup, Tỉnh Đắk Lắk"),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
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



