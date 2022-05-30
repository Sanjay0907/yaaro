import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';
import 'package:yaaro/view/home_page/homepage.dart';
import 'package:yaaro/view/onbourding/widget/button.dart';

class EnterOTP extends StatelessWidget {
  const EnterOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String heading_ = 'OTP Verification';
    TextEditingController otp = TextEditingController();
    bool hasError = false;
    StreamController<ErrorAnimationType> errorController =
        StreamController<ErrorAnimationType>();
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 45.h,
                  width: 100.w,
                  child: const Image(
                    image: AssetImage('assets/images/girl_walking.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 4.h),
                  height: 52.h,
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
                      Text(
                        'Enter the OTP sent to',
                        style: bodyTextsmall,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        width: 90.w,
                        height: 8.h,
                        child: PinCodeTextField(
                          autoFocus: false,
                          appContext: context,
                          pastedTextStyle: TextStyle(
                            color: Colors.green.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                          length: 6,
                          obscureText: false,
                          obscuringCharacter: '*',
                          animationType: AnimationType.fade,
                          validator: (v) {},
                          pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              fieldHeight: 8.h,
                              fieldWidth: 12.w,
                              activeColor: purple,
                              inactiveColor: blue,
                              selectedFillColor: white,
                              selectedColor: purple,
                              inactiveFillColor: white,
                              activeFillColor:
                                  hasError ? Colors.orange : white),
                          cursorColor: Colors.black,
                          animationDuration: const Duration(milliseconds: 300),
                          textStyle: const TextStyle(fontSize: 20, height: 1.6),
                          enableActiveFill: true,
                          errorAnimationController: errorController,
                          controller: textEditingController,
                          keyboardType: TextInputType.number,
                          boxShadows: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.black12,
                              blurRadius: 10,
                            )
                          ],
                          onCompleted: (v) {},
                          onChanged: (value) {},
                          beforeTextPaste: (text) {
                            return true;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                        width: 100.w,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Didn\'t recieve OTP?',
                                    style:
                                        bodyTextsmall.copyWith(color: black)),
                                TextSpan(
                                    text: '  Resend OTP',
                                    style: bodyTextsmall.copyWith(color: blue))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      CommonButton(
                        text: 'Continue',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
