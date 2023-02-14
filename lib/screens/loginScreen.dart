import '../screens/homeScreen.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = "/loginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 30,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  Helper.getAssetName("logo_BHXH.png", "real"),
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 1,),
            Container(
              width: double.infinity,
              height: 50,
              decoration: ShapeDecoration(
                color: AppColor.placeholderBg,
                shape: StadiumBorder(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                      margin: const EdgeInsets.only(right: 12.0),
                      color: AppColor.blue,
                      child: Icon(Icons.person, color: Colors.white,)),
                  border: InputBorder.none,
                  hintText: "Ma so ID",
                  hintStyle: TextStyle(
                    color: AppColor.placeholder,
                  ),
                  contentPadding: EdgeInsets.only(left: 200, top: 15),
                ),
              ),
            ),
                SizedBox(height: 10,),
                Container(
              width: double.infinity,
              height: 50,
              decoration: ShapeDecoration(
                color: AppColor.placeholderBg,
                shape: StadiumBorder(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                      margin: const EdgeInsets.only(right: 12.0),
                      color: AppColor.blue,
                      child: Icon(Icons.lock, color: Colors.white,)),
                  border: InputBorder.none,
                  hintText: "Mật khẩu",
                  hintStyle: TextStyle(
                    color: AppColor.placeholder,
                  ),
                  contentPadding: EdgeInsets.only(left: 200, top: 15),
                ),
              ),
            ),
               SizedBox(height: 15,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context)
                        //     .pushReplacementNamed(ForgotPwScreen.routeName);
                      },
                      child: Text("Quên mật khẩu?",
                      style: TextStyle(color: AppColor.blue,),),
                    ),
                    SizedBox(width: 100),
                    Text("Đăng ký tài khoản",
                        style: TextStyle(color: AppColor.blue),),
                  ],
                ),
               SizedBox(height: 25,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child:ElevatedButton(
                      child: Text(
                          "Đăng nhập".toUpperCase(),
                          style: TextStyle(fontSize: 14)
                      ),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                  side: BorderSide(color: AppColor.blue)
                              )
                          )
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);

                      }
                  )
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.asset(
                    Helper.getAssetName("vantay.png", "real"),
                    fit: BoxFit.cover,
                  ),
                ),
               SizedBox(height:230),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context)
                    //     .pushReplacementNamed(RegisterScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Mời cài đặt VssID",
                  style: TextStyle(color: AppColor.blue),),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("new.png", "real"),
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 17,),
                    Image.asset(
                      Helper.getAssetName("tainghe.png", "real"),
                      fit: BoxFit.cover,height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 17,),
                    Image.asset(
                      Helper.getAssetName("search.png", "real"),
                      fit: BoxFit.cover,height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 17,),
                    Image.asset(
                      Helper.getAssetName("tv.png", "real"),
                      fit: BoxFit.cover,height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 17,),
                    SizedBox(width: 90,),
                    Image.asset(
                      Helper.getAssetName("bong.png", "real"),
                      fit: BoxFit.cover,height: 50,
                      width: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future<void> login() async{
  //   if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
  //     https://reqres.in/api/login
  //     https://json-app-coffee.herokuapp.com/api/auth/login
  //     "email": "eve.holt@reqres.in",
  //     var res = await http.post(Uri.parse("https://json-app-coffee.herokuapp.com/api/auth/login"), body: ({
  //       'email' : emailController.text,
  //       'password' : passwordController.text
  //     }));
  //     print(res.statusCode);
  //     print(emailController.text);
  //     print(passwordController.text);
  //     if(res.statusCode == 200){
  //       Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  //     }else{
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Có gì đó sai sai')));
  //     }
  //   }else{
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Black Field Not Allowed')));
  //   }
  // }
}
