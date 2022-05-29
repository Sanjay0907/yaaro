import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';

import 'grow_money_nav_button.dart';
// import 'package:yaaro/view/invite_friends/invite_friends_nav_button.dart';

class GrowMoney extends StatefulWidget {
  const GrowMoney({Key? key}) : super(key: key);

  @override
  State<GrowMoney> createState() => _GrowMoneyState();
}

class _GrowMoneyState extends State<GrowMoney> {
  bool inLiveLearn = true;
  bool inYaroAcademy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: white,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 2.h),
              height: 6.h,
              width: 6.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/user.jpg'),
                      fit: BoxFit.cover)),
            ),
            Text(
              'Arpit',
              style: bodyTextsmall.copyWith(color: black),
            ),
            const Spacer(),
            FaIcon(
              FontAwesomeIcons.solidBell,
              color: black,
              size: 3.h,
            )
          ],
        ),
      ),
      body: SizedBox(
          height: 100.h,
          width: 100.w,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: grey,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  height: 13.h,
                  width: 100.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GrowMoneyNavButton(
                        text: 'Stories',
                        onTap: () {},
                      ),
                      GrowMoneyNavButton(
                        text: 'Stories',
                        onTap: () {},
                      ),
                      GrowMoneyNavButton(
                        text: 'Stories',
                        onTap: () {},
                      ),
                      GrowMoneyNavButton(
                        text: 'Stories',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  // height: 76.h,
                  height: MediaQuery.of(context).size.height,
                  width: 100.w,
                  padding: EdgeInsets.only(
                    top: 4.h,
                    // right: 5.w,
                    // left: 5.w,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: blue),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                        width: 100.w,
                        child: Row(
                          children: [
                            SingleChildCircularContainer(
                              text1: 'Live',
                              text2: 'Learn',
                              topLeft: 0,
                              topRight: 5.h,
                              bottomLeft: 0,
                              bottomRight: 5.h,
                              textAling: TextAlign.left,
                              height: 15.h,
                              color: white,
                              textColor: inLiveLearn ? blueShade1 : black,
                              onTap: () => setState(
                                () {
                                  inLiveLearn = true;
                                  inYaroAcademy = false;
                                },
                              ),
                            ),
                            const Spacer(),
                            SingleChildCircularContainer(
                              text1: 'Yaro',
                              text2: 'Academy',
                              topLeft: 5.h,
                              topRight: 0,
                              bottomLeft: 5.h,
                              bottomRight: 0,
                              textAling: TextAlign.center,
                              height: 15.h,
                              color: white,
                              textColor: inYaroAcademy ? blueShade1 : black,
                              onTap: () => setState(
                                () {
                                  inLiveLearn = false;
                                  inYaroAcademy = true;
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      inLiveLearn
                          ? const GrowMoneyContainer()
                          : HowToInvestContainer(),
                      inLiveLearn
                          ? const GrowMoneyContainer()
                          : HowToInvestContainer(),
                      inLiveLearn
                          ? const GrowMoneyContainer()
                          : HowToInvestContainer(),
                      // const GrowMoneyContainer(),
                      // const GrowMoneyContainer(),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class SingleChildCircularContainer extends StatelessWidget {
  const SingleChildCircularContainer({
    Key? key,
    required this.text1,
    required this.text2,
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
    required this.textAling,
    required this.height,
    required this.color,
    this.onTap,
    this.textColor,
  }) : super(key: key);

  final String text1;
  final String text2;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final TextAlign textAling;
  final double height;
  final Color color;
  final VoidCallback? onTap;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: 40.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeft),
              topRight: Radius.circular(topRight),
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight),
            ),
            color: color),
        alignment: Alignment.center,
        child: Text(
          text1 + '\n' + text2,
          textAlign: TextAlign.center,
          style: heading2.copyWith(color: textColor),
        ),
      ),
    );
  }
}

class GrowMoneyContainer extends StatelessWidget {
  const GrowMoneyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 3.w),
      margin: EdgeInsets.symmetric(vertical: 1.h),
      height: 16.h,
      width: 94.w,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(2.h), color: white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildCircularContainer(
            text1: 'Grow your',
            text2: 'Money',
            topLeft: 0,
            topRight: 3.h,
            bottomLeft: 0,
            bottomRight: 3.h,
            textAling: TextAlign.center,
            height: 12.h,
            color: purpleShade1,
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 10.h,
                width: 10.h,
                child: const Image(
                  image: AssetImage('assets/images/112121 1.png'),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 3.h,
                width: 25.w,
                decoration: BoxDecoration(
                  color: orangeShade1,
                  borderRadius: BorderRadius.circular(5.h),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Start',
                  style: bodyTextsmall,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HowToInvestContainer extends StatelessWidget {
  const HowToInvestContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 3.w),
      margin: EdgeInsets.symmetric(vertical: 1.h),
      height: 16.h,
      width: 94.w,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(2.h), color: white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildCircularContainer(
            text1: 'How to',
            text2: 'Invest',
            topLeft: 0,
            topRight: 3.h,
            bottomLeft: 0,
            bottomRight: 3.h,
            textAling: TextAlign.center,
            height: 12.h,
            color: purpleShade1,
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 10.h,
                width: 10.h,
                child: const Image(
                  image: AssetImage('assets/images/112121 1.png'),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 3.h,
                width: 25.w,
                decoration: BoxDecoration(
                  color: orangeShade1,
                  borderRadius: BorderRadius.circular(5.h),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Start',
                  style: bodyTextsmall,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
