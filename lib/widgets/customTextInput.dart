import 'package:flutter/material.dart';
import '../const/colors.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    required String hintText,
    EdgeInsets padding = const EdgeInsets.only(left: 40),
    Key? key,
  })  : _hintText = hintText,
        _padding = padding,
        super(key: key);

  final String _hintText;
  final EdgeInsets _padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: StadiumBorder(),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _hintText,
          hintStyle: TextStyle(
            color: AppColor.placeholder,
          ),
          contentPadding: _padding,
        ),
      ),
    );
  }
}



class CustomTextInput1 extends StatelessWidget {
  const CustomTextInput1({
    required String hintText,
    EdgeInsets padding = const EdgeInsets.only(left: 40),
    Key? key,
    required TextEditingController controller,
  })  : _hintText = hintText,
        _padding = padding,
        _controller = controller,
        super(key: key);

  final String _hintText;
  final EdgeInsets _padding;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: StadiumBorder(),
      ),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _hintText,
          hintStyle: TextStyle(
            color: AppColor.placeholder,
          ),
          contentPadding: _padding,
        ),
      ),
    );
  }
}
