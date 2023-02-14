import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);
  static const routeName = "/noteScreen";

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
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
                          Text("DỊCH VỤ CÔNG", style: TextStyle(color: Colors. white, fontSize: 25),),
                          Spacer(), // use Spacer
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
                                  Icon(Icons.event_note_outlined, size: 30, ),
                              Text("Dịch vụ"),
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.history_outlined, size: 30, ),
                              Text("Lịch sử"),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CategoryCard(title: "[612A] CẤP LẠI THẺ BHYT DO HỎNG, MẤT",
                              subtext: "Cấp lại thẻ BHYT do hỏng, mất không thay đổi thông tin"),
                          CategoryCard(title: "[612A] CẤP LẠI THẺ BHYT DO HỎNG, MẤT",
                              subtext: "Cấp lại thẻ BHYT do hỏng, mất không thay đổi thông tin"),
                          CategoryCard(title: "[612A] CẤP LẠI THẺ BHYT DO HỎNG, MẤT",
                              subtext: "Cấp lại thẻ BHYT do hỏng, mất không thay đổi thông tin"),
                          CategoryCard(title: "[612A] CẤP LẠI THẺ BHYT DO HỎNG, MẤT",
                              subtext: "Cấp lại thẻ BHYT do hỏng, mất không thay đổi thông tin"),
                          CategoryCard(title: "[612A] CẤP LẠI THẺ BHYT DO HỎNG, MẤT",
                              subtext: "Cấp lại thẻ BHYT do hỏng, mất không thay đổi thông tin"),
                          CategoryCard(title: "[612A] CẤP LẠI THẺ BHYT DO HỎNG, MẤT",
                              subtext: "Cấp lại thẻ BHYT do hỏng, mất không thay đổi thông tin"),
                          CategoryCard(title: "[612A] CẤP LẠI THẺ BHYT DO HỎNG, MẤT",
                              subtext: "Cấp lại thẻ BHYT do hỏng, mất không thay đổi thông tin"),
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
                tab1: true,
                tab2: false,
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
                      child: Text(_title, style: TextStyle(color: AppColor.bluedark),)),
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
