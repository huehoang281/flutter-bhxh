import 'package:baohiemyte/screens/sokham.dart';
import 'package:baohiemyte/screens/thamgia.dart';
import 'package:baohiemyte/screens/theBHYT.dart';
import 'package:baohiemyte/screens/thongtin.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  Text("QUẢN LÝ CÁ NHÂN"),
                  Spacer(), // use Spacer
                  Icon(
                    Icons.notifications,
                  ),
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
            ListItem(image: Icon(Icons.volume_up_outlined, color: Colors.white,), name: "Thông báo"),
            ListItem(image: Icon(Icons.laptop_mac_outlined,color: Colors.white,), name: "Tin tức"),
            ListItem(image: Icon(Icons.person,color: Colors.white,), name: "Quản lý cá nhân"),
            ListItem(image: Icon(Icons.event_note_outlined,color: Colors.white,), name: "Dịch vụ công"),
            ListItem(image: Icon(Icons.travel_explore_outlined,color: Colors.white,), name: "Tra cứu"),
            ListItem(image: Icon(Icons.support_agent_outlined,color: Colors.white,),  name: "Cài đặt"),
            ListItem1(image: Icon(Icons.lock_outlined,color: Colors.white,), name: "Đổi mật khẩu"),
            ListItem1(image: Icon(Icons.power_settings_new_outlined,color: Colors.white,), name: "Đăng xuất"),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text("Phiên bản 1.6.4", style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left:  12),
              child: Container(
                  child: Text("Bản quyền thuộc về bảo hiểm xã hội Việt Nam",style: TextStyle(color: Colors.white),)),
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
                    children: [
                      // SizedBox(height: 2,),

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
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
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  child: CategoryCard(image: Icon(Icons.medical_information_outlined,color: AppColor.bluedark,), name: "THẺ BHYT"),
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed(TheBHYT.routeName);
                                  },

                              ),
                              GestureDetector(
                                  child: CategoryCard(image: Icon(Icons.av_timer_outlined,color: AppColor.bluedark,), name: "QUÁ TRÌNH THAM GIA"),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushReplacementNamed(Thamgia.routeName);
                                },),
                              GestureDetector(
                                  child: CategoryCard(image: Icon(Icons.personal_injury_outlined,color: AppColor.bluedark,), name: "THÔNG TIN THƯỞNG"),
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed(Thongtin.routeName);
                                  }),
                              GestureDetector(
                                  child: CategoryCard(image: Icon(Icons.medical_services_outlined,color: AppColor.bluedark,), name: "SỔ KHÁM CHỮA BỆNH"),
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed(Sokham.routeName);
                                  })
                            ],
                          ),
                        ),
                      ),
                    ],
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


class ListItem extends StatelessWidget {
  ListItem(
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
    return ListTile(
      title: Row(
        children: [
          _image,
          SizedBox(width: 15,),
          Text(_name, style: TextStyle(color: Colors. white),),
          Spacer(),
          Icon(
            Icons.east_outlined, color: Colors.cyan,
          ),
        ],
      ),
      onTap: () {
        // Update the state of the app
        // ...
        // Then close the drawer
        Navigator.pop(context);
      },
    );
  }
}

class ListItem1 extends StatelessWidget {
  ListItem1(
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
    return ListTile(
      title: Row(
        children: [
          _image,
          SizedBox(width: 15,),
          Text(_name, style: TextStyle(color: Colors.white),),
        ],
      ),
      onTap: () {
        // Update the state of the app
        // ...
        // Then close the drawer
        Navigator.pop(context);
      },
    );
  }
}


