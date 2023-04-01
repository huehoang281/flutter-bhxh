import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';
import 'homeScreen.dart';

class Thamgia extends StatefulWidget {
  const Thamgia({Key? key}) : super(key: key);
  static const routeName = "/thamgia";

  @override
  State<Thamgia> createState() => _ThamgiaState();
}

class _ThamgiaState extends State<Thamgia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                  Text("QUÁ TRÌNH THAM GIA"),
                ],
              ),
            ),
          ),
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
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: <Widget>[
                  Column(
                    children: [
                      Icon(Icons.handshake_outlined, size: 50, ),
                      Text("BHXH"),
                    ],
                  ),
                  SizedBox(width: 26), // use Spacer
                  Column(
                    children: [
                      Icon(Icons.six_ft_apart_outlined, size: 50, ),
                      Text("BHTN"),
                    ],
                  ),
                  SizedBox(width: 26),
                  Column(
                    children: [
                      Icon(Icons.nordic_walking_outlined, size: 50, ),
                      Text("BHTNLĐ"),
                    ],
                  ),
                  SizedBox(width: 26),
                  Column(
                    children: [
                      Icon(Icons.local_hospital_outlined, size: 50, ),
                      Text("BHYT"),
                    ],
                  ),
                  SizedBox(width: 26),
                  Column(
                    children: [
                      Icon(Icons.description_outlined, size: 50, ),
                      Text("C14-TS"),
                    ],
                  ),// use Spacer
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0,top: 100.0, right: 16.0, bottom: 16.0),
              child: Container(
                height: 98,
                decoration: BoxDecoration(color: AppColor.bluelinth),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Text( "Quá trình tham gia Bảo hiểm xã hội", style: TextStyle(color: AppColor.bluedark),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(color:AppColor.blue),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          children: <Widget>[
                                Text("Từ tháng",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 25), // use Spacer
                                Text("Đến tháng",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 25),
                                Text("Đơn vị",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 25),
                                Column(
                                  children: [
                                    Text("Nghề nghiệp",style: TextStyle(color: Colors.white),),
                                    Text("Chức vụ",style: TextStyle(color: Colors.white),),
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



