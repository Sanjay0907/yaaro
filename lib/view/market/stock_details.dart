import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/text_style.dart';

import '../../utils/colors.dart';
import '../portfolio/portfolio.dart';

class StockDetails extends StatelessWidget {
  final String imagePath;
  final String currentPrice;
  final String companyType;
  final String todaysGain;
  final String gainPercentage;
  final String todaysLow;
  final String todaysHigh;
  final String weekLow;
  final String weekHigh;
  const StockDetails({
    Key? key,
    required this.imagePath,
    required this.currentPrice,
    required this.companyType,
    required this.todaysGain,
    required this.gainPercentage,
    required this.todaysLow,
    required this.todaysHigh,
    required this.weekLow,
    required this.weekHigh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 8.h,
        margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BuySellButton(
              text: 'SELL',
              backGroundColor: transparent,
              borderColor: blueShade1,
              textColor: blueShade1,
            ),
            BuySellButton(
                text: 'BUY',
                backGroundColor: blueShade1,
                borderColor: transparent,
                textColor: white)
          ],
        ),
      ),
      // ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: black,
            size: 3.h,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
          height: 100.h,
          width: 100.w,
          color: white,
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
                width: 100.w,
                child: Row(
                  children: [
                    Container(
                      height: 8.h,
                      width: 8.h,
                      decoration: BoxDecoration(
                        // color: red,
                        borderRadius: BorderRadius.circular(1.h),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButtonDynamic(
                      iconData: FontAwesomeIcons.bookmark,
                      iconColor: black,
                    ),
                    IconButtonDynamic(
                      iconData: FontAwesomeIcons.share,
                      iconColor: black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                height: 8.h,
                width: 100.w,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '₹ ' + currentPrice,
                          style: bodyTextMediun.copyWith(
                            color: black,
                          ),
                        ),
                        Text(
                          todaysGain + gainPercentage,
                          style: bodyTextExtrasmall.copyWith(
                            color: greenShade1,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 4.h,
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            border: Border.all(
                              color: greenShade1,
                              width: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            companyType,
                            style: bodyTextsmall.copyWith(color: black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45.h,
                width: 100.w,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 40.h,
                        width: 100.w,
                        child: Image(
                          image: AssetImage(
                            'assets/images/market_1d_chart.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          stockTimeButton(
                            text: 'NSE',
                            isTapped: false,
                          ),
                          stockTimeButton(
                            text: '1D',
                            isTapped: true,
                          ),
                          stockTimeButton(
                            text: '1W',
                            isTapped: false,
                          ),
                          stockTimeButton(
                            text: '1M',
                            isTapped: false,
                          ),
                          stockTimeButton(
                            text: '1Y',
                            isTapped: false,
                          ),
                          stockTimeButton(
                            text: '3Y',
                            isTapped: false,
                          ),
                          stockTimeButton(
                            text: '5Y',
                            isTapped: false,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Performance',
                    style: bodyTextsmall.copyWith(color: black),
                  ),
                ],
              ),
              Container(
                height: 28.h,
                width: 90.w,
                padding: EdgeInsets.symmetric(
                  vertical: 1.h,
                  horizontal: 3.w,
                ),
                decoration: BoxDecoration(
                  color: purpleLight,
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: blackShade2,
                  //       offset: Offset(
                  //         2,
                  //         3,
                  //       ),
                  //       blurRadius: 5),
                  // ],?
                  borderRadius: BorderRadius.circular(2.h),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      // height: 8.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PortfolioDetails(
                            heading: 'Today\'s Low',
                            money: todaysLow,
                            moneyColor: black,
                          ),
                          PortfolioDetails(
                            heading: 'Today\'s High',
                            money: todaysHigh,
                            moneyColor: black,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: grey,
                      thickness: 2,
                    ),
                    SizedBox(
                      // height: 8.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PortfolioDetails(
                            heading: '52 Weeks Low',
                            money: weekLow,
                            moneyColor: black,
                          ),
                          PortfolioDetails(
                            heading: '52 Weeks High',
                            money: weekHigh,
                            moneyColor: black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuySellButton extends StatelessWidget {
  final Color backGroundColor;
  final Color borderColor;
  final String text;
  final Color textColor;
  const BuySellButton(
      {Key? key,
      required this.text,
      required this.backGroundColor,
      required this.borderColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 7.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          1.h,
        ),
        color: backGroundColor,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: bodyTextMediun.copyWith(color: textColor),
      ),
    );
  }
}

class stockTimeButton extends StatelessWidget {
  final String text;
  final bool isTapped;

  const stockTimeButton({Key? key, required this.text, required this.isTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3.5.h,
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      decoration: BoxDecoration(
        color: isTapped ? blueShade1 : white,
        borderRadius: BorderRadius.circular(5.h),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: bodyTextExtrasmall.copyWith(color: black),
      ),
    );
  }
}

class IconButtonDynamic extends StatelessWidget {
  final IconData iconData;
  IconData? isTappedIconData;
  Color? iconColor = black;
  bool? isTapped = false;

  IconButtonDynamic({
    Key? key,
    required this.iconData,
    this.isTapped,
    this.iconColor,
    this.isTappedIconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1.w),
        height: 7.h,
        width: 7.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: greyshade1,
        ),
        alignment: Alignment.center,
        child: FaIcon(
          iconData,
          size: 3.h,
          color: black,
        ),
      ),
    );
  }
}
