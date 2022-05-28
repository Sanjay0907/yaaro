import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';
import 'package:yaaro/view/grow_money/grow_money.dart';
import 'package:yaaro/view/investment_page/market.dart';
import 'package:yaaro/view/profile/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: Container(
        color: white,
        height: 100.h,
        width: 100.w,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                height: 13.h,
                width: 100.w,
                color: grey,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(right: 2.h),
                        height: 10.h,
                        width: 10.h,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://picsum.photos/seed/657/600'))),
                      ),
                    ),
                    Text(
                      'Hi, Arpit',
                      style: bodyTextsmall,
                    ),
                    Spacer(),
                    FaIcon(
                      FontAwesomeIcons.solidBell,
                      size: 3.h,
                      color: black,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 1.5.h),
                        height: 18.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomepageNavButton(
                              text: 'Invest   ',
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (contex) => const MarketData())),
                            ),
                            HomepageNavButton(
                              text: 'Portfolio   ',
                              onTap: () {},
                            ),
                            HomepageNavButton(
                              text: 'Learn   ',
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (contex) => const GrowMoney())),
                            ),
                          ],
                        ),
                      ),
                      const HomepageBanner(),
                      const HomepageBanner(),
                      const HomepageBanner(),
                      const HomepageBanner(),
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

class HomepageBanner extends StatelessWidget {
  const HomepageBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      height: 17.h,
      width: 90.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('assets/images/banner1.png'),
              fit: BoxFit.fill)),
    );
  }
}

class HomepageNavButton extends StatelessWidget {
  String text;
  VoidCallback onTap;
  HomepageNavButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.h,
      width: 13.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              margin: EdgeInsets.only(right: 2.h),
              height: 10.h,
              width: 10.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image:
                          NetworkImage('https://picsum.photos/seed/657/600'))),
            ),
          ),
          Text(
            text,
            style: bodyTextsmall.copyWith(color: black),
          )
        ],
      ),
    );
  }
}
