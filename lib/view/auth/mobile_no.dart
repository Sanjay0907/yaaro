import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';
import 'package:yaaro/view/auth/otp.dart';
import 'package:yaaro/view/onbourding/widget/button.dart';

class EnterMobileNo extends StatelessWidget {
  const EnterMobileNo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String heading_ = 'Enter your mobile number';
    TextEditingController mobileNo = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 45.h,
                  width: 100.w,
                  child: const Image(
                    image: AssetImage('assets/images/girl_walking.png'),
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
                      Container(
                        height: 8.h,
                        width: 85.w,
                        padding: EdgeInsets.all(1.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10
                                // topLeft: Radius.circular(10),
                                // topRight: Radius.circular(10),
                                ),
                            border: Border.all(color: blackShade1, width: 1)),
                        child: TextField(
                          controller: mobileNo,
                          autofocus: false,
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black,
                          style: textFieldStyle,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: SizedBox(
                              height: 3.h,
                              width: 3.h,
                              child: const Center(
                                child: Text(
                                  '+91 ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            suffixIcon: const Icon(
                              Icons.phone_enabled,
                              color: Color(0xFF101213),
                              size: 24,
                            ),
                            prefixStyle: TextStyle(color: Colors.black),
                            hintText: 'Mobile No.',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CommonButton(
                        text: 'Continue',
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EnterOTP(),
                          ),
                        ),
                      )
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     InkWell(
                      //       onTap: () {},
                      //       child: Container(
                      //         height: 10.h,
                      //         width: 10.h,
                      //         decoration: BoxDecoration(
                      //             color: Colors.blue,
                      //             borderRadius: BorderRadius.circular(20)),
                      //         alignment: Alignment.center,
                      //         child: FaIcon(
                      //           FontAwesomeIcons.angleRight,
                      //           size: 3.h,
                      //           color: white,
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
