import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';
import 'package:yaaro/view/onbourding/details_screen.dart';
import 'package:yaaro/view/onbourding/widget/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String heading_ = 'WELCOME TO YARO';
    String aboutYARO = 'India\'s first investing app for the teenagers';
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              SizedBox(
                height: 45.h,
                width: 100.w,
                child: const Image(
                  image: AssetImage('assets/images/girl_on_rocket.png'),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 4.h),
                height: 51.5.h,
                width: 100.w,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Text(
                      heading_,
                      style: heading,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      height: 10.h,
                      width: 70.w,
                      child: Text(
                        aboutYARO,
                        textAlign: TextAlign.center,
                        style: bodyTextsmall.copyWith(color: black),
                      ),
                    ),
                    CommonButton(
                      text: 'Continue as a Parent',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ),
                      ),
                    ),
                    CommonButton(
                      text: 'Continue as a Teen',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
