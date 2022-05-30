import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';

import 'learn_nav_button.dart';
// import 'package:yaaro/view/invite_friends/invite_friends_nav_button.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  bool inLiveLearn = false;
  bool inYaroAcademy = true;
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
          child: Stack(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: grey,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  height: 13.h,
                  width: 100.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LearnNavButton(
                        text: 'Stories',
                        onTap: () {},
                      ),
                      LearnNavButton(
                        text: 'Stories',
                        onTap: () {},
                      ),
                      LearnNavButton(
                        text: 'Stories',
                        onTap: () {},
                      ),
                      LearnNavButton(
                        text: 'Stories',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 1.h,
              // ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 76.h,
                  // height: MediaQuery.of(context).size.height,
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                          width: 100.w,
                          child: Row(
                            children: [
                              SingleChildCircularContainer(
                                text1: 'Yaro',
                                text2: 'Academy',
                                haveImage: false,
                                topLeft: 0,
                                topRight: 5.h,
                                bottomLeft: 0,
                                bottomRight: 5.h,
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
                              ),
                              const Spacer(),
                              SingleChildCircularContainer(
                                text1: 'Live',
                                text2: 'Learn',
                                haveImage: false,
                                topLeft: 5.h,
                                topRight: 0,
                                bottomLeft: 5.h,
                                bottomRight: 0,
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
                            ],
                          ),
                        ),
                        inLiveLearn
                            ? const GrowMoneyContainer(
                                imagePath:
                                    'assets/images/stock_investors/gautam_adani1.png',
                                textNote: 'Gautam Adani',
                              )
                            : const HowToInvestContainer(
                                imagePath:
                                    'assets/images/learn_images/grow_money.png',
                                textNote: 'Needs Vs Wants',
                              ),
                        inLiveLearn
                            ? const GrowMoneyContainer(
                                imagePath:
                                    'assets/images/stock_investors/rakesh_jhunjhuntitan.png',
                                textNote: 'Rakesh Jhunjhunwala',
                              )
                            : const HowToInvestContainer(
                                imagePath:
                                    'assets/images/learn_images/piggy_money_.png',
                                textNote: 'Budgeting',
                              ),
                        inLiveLearn
                            ? const GrowMoneyContainer(
                                imagePath:
                                    'assets/images/stock_investors/warren_buffet.jpg',
                                textNote: 'Warren Buffet',
                              )
                            : const HowToInvestContainer(
                                imagePath:
                                    'assets/images/learn_images/do_stocks.png',
                                textNote: 'Growth with Time',
                              ),
                        // const GrowMoneyContainer(),
                        // const GrowMoneyContainer(),
                      ],
                    ),
                  ),
                ),
              )
            ],
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
    required this.haveImage,
    this.color,
    this.onTap,
    this.textColor,
    this.backGroundImagePath,
  }) : super(key: key);

  final String text1;
  final String text2;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final TextAlign textAling;
  final double height;
  final Color? color;
  final VoidCallback? onTap;
  final Color? textColor;
  final String? backGroundImagePath;
  final bool haveImage;

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
          color: color,
          image: haveImage
              ? DecorationImage(
                  image: AssetImage(backGroundImagePath.toString()),
                  fit: BoxFit.cover,
                )
              : null,
        ),
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
  final String imagePath;
  final String textNote;
  const GrowMoneyContainer(
      {Key? key, required this.imagePath, required this.textNote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 3.w),
      margin: EdgeInsets.symmetric(vertical: 1.h),
      height: 16.h,
      width: 94.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.h),
        color: white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildCircularContainer(
            haveImage: true,
            text1: '',
            text2: '',
            topLeft: 0,
            topRight: 3.h,
            bottomLeft: 0,
            bottomRight: 3.h,
            textAling: TextAlign.center,
            height: 12.h,
            color: purplishPink,
            backGroundImagePath: imagePath,
          ),
          const Spacer(),
          SizedBox(
            height: 12.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    // color: red,
                    alignment: Alignment.center,
                    height: 7.h,
                    width: 45.w,
                    child: Text(
                      textNote,
                      textAlign: TextAlign.center,
                      style: bodyTextMediun.copyWith(color: black, height: 1),
                    )),
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
            ),
          )
        ],
      ),
    );
  }
}

class HowToInvestContainer extends StatelessWidget {
  final String imagePath;
  final String textNote;
  const HowToInvestContainer(
      {Key? key, required this.imagePath, required this.textNote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 3.w),
      margin: EdgeInsets.symmetric(vertical: 1.h),
      height: 16.h,
      width: 94.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.h),
        color: white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildCircularContainer(
            haveImage: true,
            text1: '',
            text2: '',
            topLeft: 0,
            topRight: 3.h,
            bottomLeft: 0,
            bottomRight: 3.h,
            textAling: TextAlign.center,
            height: 12.h,
            color: purplishPink,
            backGroundImagePath: imagePath,
          ),
          const Spacer(),
          SizedBox(
            height: 12.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    // color: red,
                    alignment: Alignment.center,
                    height: 7.h,
                    width: 45.w,
                    child: Text(
                      textNote,
                      textAlign: TextAlign.center,
                      style: bodyTextMediun.copyWith(color: black, height: 1),
                    )),
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
            ),
          )
        ],
      ),
    );
  }
}
