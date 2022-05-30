import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: black,
              size: 3.h,
            )),
        title: Text(
          'Portfolio',
          style: bodyTextsmall.copyWith(color: black),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Container(
              color: orange,
              height: 6.h,
              width: 100.w,
              padding: EdgeInsets.only(left: 3.w),
              alignment: Alignment.centerLeft,
              child: Text(
                'Open a demat account & win Rs 200.',
                style: bodyTextsmall.copyWith(color: redishOrange),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 28.h,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 25.h,
                      width: 90.w,
                      padding: EdgeInsets.symmetric(
                        vertical: 1.h,
                        horizontal: 3.w,
                      ),
                      decoration: BoxDecoration(
                        color: white,
                        boxShadow: [
                          BoxShadow(
                              color: blackShade2,
                              offset: Offset(
                                2,
                                3,
                              ),
                              blurRadius: 5),
                        ],
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
                                  heading: 'Invested',
                                  money: '0.00',
                                  moneyColor: black,
                                ),
                                PortfolioDetails(
                                  heading: 'Current',
                                  money: '0.00',
                                  moneyColor: black,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: greyshade1,
                            thickness: 2,
                          ),
                          SizedBox(
                            // height: 8.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PortfolioDetails(
                                  heading: 'Total Returns(₹)',
                                  money: '0.00',
                                  moneyColor: greenShade1,
                                ),
                                PortfolioDetails(
                                  heading: 'Total Returns(₹)',
                                  money: '0.00',
                                  moneyColor: greenShade1,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 10.w,
                    child: Container(
                      height: 4.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.h),
                          color: greyshade1),
                      alignment: Alignment.center,
                      child: Text(
                        'Holdings (0)',
                        style: bodyTextExtrasmall.copyWith(color: black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
              width: 100.w,
              child: Image(
                image: AssetImage('assets/images/buying_stocks.png'),
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Your Dashboard is empty',
              style: bodyTextsmall.copyWith(color: purpleDark),
            )
          ],
        ),
      ),
    );
  }
}

class PortfolioDetails extends StatelessWidget {
  final String heading;
  final String money;
  final Color moneyColor;
  const PortfolioDetails(
      {Key? key,
      required this.heading,
      required this.money,
      required this.moneyColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 37.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            heading,
            textAlign: TextAlign.center,
            style: bodyTextsmall.copyWith(color: grey),
          ),
          Text(
            '₹ ' + money,
            style: bodyTextMediun.copyWith(color: moneyColor),
          ),
        ],
      ),
    );
  }
}
