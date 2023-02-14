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
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 390,
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
                                Text("Hoang Thi Hue", style: TextStyle(color: Colors.black),),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("Thời hạn có giá trị"),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("01/01/2023 đến 31/12/2023"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 1,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text("Giới tính"),
                            SizedBox(
                              height: 8,
                            ),
                            Spacer(),
                            Text("Nữ"),
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
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text("Số thẻ BHYT"),
                            SizedBox(
                              height: 8,
                            ),
                            Spacer(),
                            Text("HN0901933916"),

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
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text("Nơi ĐKKCCB BĐ"),
                            SizedBox(
                              height: 8,
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Trạm y tế Xã CưKBang(Mã:"),
                                Text("66009"),
                              ],
                            ),

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
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text("Thời điểm 5 năm liên tục"),
                            SizedBox(
                              height: 8,
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("01/01/2021"),
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
          ),
    Container(
    child: Padding(
    padding: const EdgeInsets.only(left: 16.0,top: 430.0, right: 16.0, bottom: 16.0),
    child: Container(
    height: 500,
    decoration: BoxDecoration(color: AppColor.bluelinth),
    child: Column(
    children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Text("Thông tin quyền lợi:", style: TextStyle(color: AppColor.bluedark),),
            ],
          ),
        ),
      ),
      Text(" jieweaokswfdc;sldfmv km")
    ],
    ),
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



