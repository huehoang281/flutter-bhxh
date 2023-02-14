import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const routeName = "/searchScreen";

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
                child: Container(
                  width: Helper.getScreenWidth(context),
                  height: Helper.getScreenHeight(context),
                  child: Column(
                    children: [
                      // SizedBox(height: 23,),
                      Container(
                        decoration: BoxDecoration(color: Colors.blue),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.menu,color: Colors. white
                              ),
                              Spacer(), // use Spacer
                              Text("TRA CỨU TRỰC TUYẾN", style: TextStyle(color: Colors. white,fontSize: 25),),
                              Spacer(), // use Spacer
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        Helper.getAssetName("build.jpg", "real"),
                        fit: BoxFit.cover,
                        width: Helper.getScreenWidth(context),
                        height: 200,
                      ),
                      Container(
                        width: Helper.getScreenWidth(context),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: [
                                  Icon(Icons.qr_code_2_outlined, color: AppColor.bluedark,size: 60, ),
                                  Text("Tra cứu mã số BHXH",style: TextStyle(color: AppColor.bluedark),),
                                ],
                              ),
                              SizedBox(width: 40,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add_location_outlined,color: AppColor.bluedark, size: 60, ),
                                  Container(
                                    width: 130,
                                      child:
                                      Text("Tra cứu cơ quan bảo hiểm",style: TextStyle(color: AppColor.bluedark),)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: Helper.getScreenWidth(context),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: [
                                  Icon(Icons.save_as_outlined,color: AppColor.bluedark, size: 60, ),
                                  Container(
                                      width: 130,
                                      child:
                                      Text("Tra cứu CSKCB cấp giấy nghỉ việc hưởng BHXH",style: TextStyle(color: AppColor.bluedark),)),
                                ],
                              ),
                              SizedBox(width: 40,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.find_in_page_outlined,color: AppColor.bluedark,size: 60, ),
                                  Container(
                                      width: 150,
                                      child:
                                      Text("Tra cứu CSKCB ký hợp đồng khám, chữa bệnh BHXH",style: TextStyle(color: AppColor.bluedark),)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: Helper.getScreenWidth(context),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: [
                                  Icon(Icons.corporate_fare_outlined, color: AppColor.bluedark, size: 60, ),
                                  Container(
                                      width: 150,
                                      child:
                                      Text("Tra cứu đơn vị tham gia BHXH",style: TextStyle(color: AppColor.bluedark),)),
                                ],
                              ),
                              SizedBox(width: 40,),
                              Column(
                                children: [
                                  Icon(Icons.phonelink_ring_outlined,color: AppColor.bluedark, size: 60, ),
                                  Container(
                                      width: 150,
                                      child:
                                      Text("Tra cứu điểm thu, đại lý thu",style: TextStyle(color: AppColor.bluedark),)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                home: false,
                tab1: false,
                tab2: true,
                tab3: false,
              )),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    Key? key,
    required String title,
    required String subtext,
  })  : _subtext = subtext,
        _title = title,
        super(key: key);

  final String _title;
  final String _subtext;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                child: Image.asset(
                  Helper.getAssetName("logoyte.png", "virtual"),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 290,
                      child: Text(_title)),
                  SizedBox(height: 5),

                  Container(
                      width: 290,
                      child: Text(_subtext))
                ],
              )
              // Spacer(),
              // Icon(
              //   Icons.arrow_forward_ios,
              // ),
            ],
          ),
        ));
  }
}
