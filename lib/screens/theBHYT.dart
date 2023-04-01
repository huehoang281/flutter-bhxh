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
                  Text("THẺ BẢO HIỂM Y TỂ"),
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
                  height: Helper.getScreenHeight(context)*1.5,
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
                                          Text("Hoang Thi Hue", style: TextStyle(color: Colors.black),),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text("Thời hạn có giá trị"),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text("01/01/2023 đến 31/21/2101"),
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
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          color: AppColor.bluelinth,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Thông tin quyền lợi:", style: TextStyle(color: AppColor.bluedark),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Được hưởng 100% chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng BHYT,chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng chi phí khám bệnh, chữa bệnh trong phạm vi được hưởng "),
                              ),
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
            left: 0,
            bottom: 70,
            child: Container(
              color: Colors.white,
              width: Helper.getScreenWidth(context),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: [
                            Icon(Icons.qr_code_2_outlined, size: 30, color: AppColor.bluedark, ),
                            SizedBox(width: 5,),
                            Text("Sử dụng thẻ", style: TextStyle(color: AppColor.bluedark),),
                          ],
                        ),
                        SizedBox(width: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.photo_size_select_actual_outlined, size: 30, color: AppColor.bluedark, ),
                            SizedBox(width: 5,),
                            Text("Hình ảnh thẻ", style: TextStyle(color: AppColor.bluedark),),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 1,
                      width: Helper.getScreenWidth(context),
                      color: Colors.black12,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                home: false,
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



