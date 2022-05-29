import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueShade1,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: white,
        title: Row(
          children: [
            Container(
              height: 6.h,
              width: 6.h,
              // margin: Edge,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/user.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Arpit',
              style: bodyTextsmall.copyWith(color: black),
            ),
            // SizedBox(height: 6.,)
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.solidBell,
                color: black,
                size: 3.h,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.ellipsisVertical,
                color: black,
                size: 3.h,
              ),
            )
          ],
        ),
        elevation: 0,
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          margin: EdgeInsets.all(1.h),
                          height: 6.h,
                          width: 6.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.h),
                            color: white,
                          ),
                          alignment: Alignment.center,
                          child: FaIcon(
                            FontAwesomeIcons.angleLeft,
                            color: blueShade1,
                            size: 3.h,
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    'INVITE YOUR FRIENDS',
                    style: headingInter.copyWith(
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline),
                  ),
                  Container(
                    height: 30.h,
                    width: 30.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Message_perspective_matte_s.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 45.h,
                  width: 100.w,
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        5.h,
                      ),
                      topRight: Radius.circular(
                        5.h,
                      ),
                    ),
                    color: white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Invite & Earn',
                        style: heading.copyWith(
                            decoration: TextDecoration.underline),
                      ),
                      // SizedBox(
                      //   height: 1.h,
                      // ),
                      Text(
                        '* upto Rs 10,000 every month',
                        style: bodyTextExtrasmall.copyWith(fontSize: 1.7.h),
                      ),
                      // SizedBox(
                      //   height: 1.h,
                      // ),
                      SizedBox(
                          width: 67.w,
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  style: bodyTextsmall.copyWith(color: black),
                                  children: [
                                    const TextSpan(
                                        text:
                                            'You and your friend both get flat Rs100  when their account activate on '),
                                    TextSpan(
                                      text: 'YAROPAY',
                                      style: bodyTextsmall.copyWith(
                                        color: red,
                                      ),
                                    ),
                                    const TextSpan(text: ' using your invite.')
                                  ]))
                          // child: Text(
                          //   'YAROPAY using your invite.',
                          //   textAlign: TextAlign.center,
                          //   style: bodyTextsmall,
                          // ),
                          ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5.w,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'By proceeding, I Agree to',
                                  style: bodyTextsmall.copyWith(
                                      color: black, fontSize: 1.8.h),
                                ),
                                TextSpan(
                                  text: ' T&C',
                                  style: bodyTextsmall.copyWith(
                                      color: blueShade1, fontSize: 1.8.h),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.h),
                                        ),
                                      ),
                                      contentPadding:
                                          EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      // backgroundColor: Colors.transparent,
                                      title: Container(
                                        height: 50.h,
                                        width: 95.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.h),
                                            color: white),
                                        child: Column(
                                          // mainAxisAlignment:
                                          // MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Coming Soon',
                                              style: heading.copyWith(
                                                  color: blueShade1,
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            SizedBox(
                                              width: 70.w,
                                              child: Text(
                                                'Team YARO is working  24/7 to bring you the  best of us',
                                                textAlign: TextAlign.center,
                                                style: bodyTextMediun.copyWith(
                                                    color: black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            InkWell(
                                              onTap: () =>
                                                  Navigator.pop(context),
                                              child: Container(
                                                height: 6.h,
                                                width: 35.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: orangeShade1,
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'OK',
                                                  style: heading.copyWith(
                                                      color: white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Container(
                              height: 6.h,
                              width: 35.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: greenShade1,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Invite',
                                style: heading.copyWith(color: white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
