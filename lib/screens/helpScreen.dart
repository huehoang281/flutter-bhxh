import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);
  static const routeName = "/helpScreen";

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
                              Text("TRUNG TÂM TRỢ GIÚP", style: TextStyle(color: Colors. white,fontSize: 25),),
                              Spacer(), // use Spacer
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        Helper.getAssetName("alo.jpg", "real"),
                        fit: BoxFit.cover,
                        width: Helper.getScreenWidth(context),
                        height: 200,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            CategoryCard(image: Icon(Icons.note_alt_outlined,color: AppColor.bluedark,), name: "HƯỚNG DẪN SỬ DỤNG"),
                            CategoryCard(image: Icon(Icons.chat_outlined,color: AppColor.bluedark,), name: "CHAT BOX"),
                            CategoryCard(image: Icon(Icons.contact_phone_rounded,color: AppColor.bluedark,), name: "TỔNG ĐÀI"),
                            CategoryCard(image: Icon(Icons.mark_email_read_outlined,color: AppColor.bluedark,), name: "EMAIL"),
                            CategoryCard(image: Icon(Icons.mark_chat_read_outlined,color: AppColor.bluedark,), name: "CÂU HỎI THƯỜNG GẶP"),
                            CategoryCard(image: Icon(Icons.send_time_extension_outlined,color: AppColor.bluedark,), name: "PHẢN ÁNH KIẾM NGHỊ"),
                          ],
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
                tab2: false,
                tab3: true,
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
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 12,bottom: 5,left: 12),
      child: Container(
          color: Colors.black12,
          width: Helper.getScreenWidth(context),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: <Widget>[
                _image,
                SizedBox(width: 30,),
                Text(_name, style: TextStyle(color: Colors.black87),),
                Spacer(),
              ],
            ),
          )
      ),
    );
  }
}
