import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';
import 'package:yaaro/view/auth/mobile_no.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String heading_ = 'Start Learning & Investing';
    String aboutYARO =
        'YARO is a platform where teens can invest in shares, mutual funds under there parent control.';
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
                    SizedBox(
                      height: 13.h,
                      width: 80.w,
                      child: Text(
                        aboutYARO,
                        textAlign: TextAlign.center,
                        style: bodyTextsmall.copyWith(color: Colors.grey),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EnterMobileNo(),
                            ),
                          ),
                          child: Container(
                            height: 10.h,
                            width: 10.h,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            alignment: Alignment.center,
                            child: FaIcon(
                              FontAwesomeIcons.angleRight,
                              size: 3.h,
                              color: white,
                            ),
                          ),
                        )
                      ],
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
