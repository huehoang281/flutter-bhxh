import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class Thongtin extends StatefulWidget {
  const Thongtin({Key? key}) : super(key: key);
  static const routeName = "/thongtin";

  @override
  State<Thongtin> createState() => _ThongtinState();
}

class _ThongtinState extends State<Thongtin> {
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
                  SizedBox(width: 40,),
                  Text("THÔNG TIN HƯỞNG"),
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
                  SizedBox(width: 45), // use Spacer
                  Column(
                    children: [
                      Icon(Icons.volunteer_activism_outlined, size: 50, ),
                      Text("BHTN")
                    ],
                  ),
                  SizedBox(width: 45),
                  Column(
                    children: [
                      Icon(Icons.six_ft_apart_outlined, size: 50, ),
                      Text("BHTNLĐ"),
                    ],
                  ),
                  SizedBox(width: 45),
                  Column(
                    children: [
                      Icon(Icons.edit_note_outlined, size: 50, ),
                      Text("BHYT"),
                    ],
                  ), // use Spacer
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0,top: 100.0, right: 16.0, bottom: 16.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(color: AppColor.bluelinth),
                child: Column(
                  children: [
                    Container(
                      width: Helper.getScreenWidth(context),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text( "Thông tin hưởng BHXH 1 lần", style: TextStyle(color: AppColor.bluedark),textAlign: TextAlign.center,),
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



