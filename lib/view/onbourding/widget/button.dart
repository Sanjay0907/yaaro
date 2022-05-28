import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/text_style.dart';
import '../../../utils/colors.dart';

class CommonButton extends StatelessWidget {
  String text;
  VoidCallback onTap;
  CommonButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 1.h),
        height: 7.h,
        width: 70.w,
        decoration: BoxDecoration(
          color: blue,
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: buttonStyle,
        ),
      ),
    );
  }
}
