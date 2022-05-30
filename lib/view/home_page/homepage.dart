import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';
import 'package:yaaro/view/learn/learn.dart';
import 'package:yaaro/view/portfolio/portfolio.dart';
import 'package:yaaro/view/profile/profile.dart';
import 'package:yaaro/view/profile/profile_new.dart';

import '../market/market.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueShade1,
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
                          builder: (context) => const ProfileNew(),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(right: 2.h),
                        height: 10.h,
                        width: 10.h,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/user.jpg'),
                                fit: BoxFit.fitHeight)),
                      ),
                    ),
                    Text(
                      'Hi, Arpit',
                      style: bodyTextsmall,
                    ),
                    const Spacer(),
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
                  color: blueShade1,
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 1.5.h),
                        height: 18.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: purpleLight2,
                            borderRadius: BorderRadius.circular(3.h)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomepageNavButton(
                              text: 'Invest   ',
                              image: 'assets/images/graph_up_.png',
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (contex) => const MarketData())),
                            ),
                            HomepageNavButton(
                              text: 'Portfolio   ',
                              image: 'assets/images/user_portfolio.jpg',
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (contex) => const Portfolio(),
                                ),
                              ),
                            ),
                            HomepageNavButton(
                              text: 'Learn   ',
                              image: 'assets/images/stock_learn.png',
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (contex) => const Learn(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const HomepageBanner(
                        startingText: 'Weekly Interective with Team',
                        endingText: '',
                        imagePath: 'assets/images/lady_standing_.png',
                        buttonText: 'Sign Up/Login',
                      ),
                      const HomepageBanner(
                        startingText: 'Learn 1 on 1 Investment on',
                        endingText: '',
                        imagePath: 'assets/images/girl_sitting_.png',
                        buttonText: 'Book a Session',
                      ),
                      HomepageBanner(
                        startingText: 'Join Discord club of',
                        endingText: '',
                        imagePath: 'assets/images/discord_.png',
                        buttonText: 'Join Now',
                        onTap: () async {
                          final url =
                              Uri.parse('https://discord.gg/KMBTT7WTtZ');

                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          }
                        },
                      ),
                      HomepageBanner(
                        startingText: 'Join Instagram Page of',
                        endingText: '',
                        imagePath: 'assets/images/instagram.png',
                        buttonText: 'Join Now',
                        onTap: () async {
                          final url = Uri.parse(
                              'https://www.instagram.com/yaropay.official/');

                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          }
                        },
                      ),
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
  final String startingText;
  final String endingText;
  final VoidCallback? onTap;
  final String imagePath;
  final String buttonText;
  const HomepageBanner({
    Key? key,
    required this.startingText,
    required this.endingText,
    required this.imagePath,
    required this.buttonText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.h),
      margin: EdgeInsets.symmetric(vertical: 1.h),
      height: 18.h,
      width: 90.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.h), color: purpleLight),
      child: Row(
        children: [
          SizedBox(
            width: 60.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Text(
                //   'Join our YARO club on Discord',
                //   style: bodyTextMediun.copyWith(color: black, height: 1.2),
                // ),
                RichText(
                  text: TextSpan(
                    style: bodyTextMediun.copyWith(color: black, height: 1.2),
                    children: [
                      TextSpan(text: startingText),
                      TextSpan(
                        text: ' YARO ',
                        style: bodyTextMediun.copyWith(color: red, height: 1.2),
                      ),
                      TextSpan(text: endingText)
                    ],
                  ),
                ),
                InkWell(
                  onTap: onTap,
                  child: Container(
                    height: 5.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.h),
                        color: blueShade1),
                    alignment: Alignment.center,
                    child: Text(
                      buttonText,
                      style: bodyTextsmall.copyWith(
                        color: white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12.h,
            width: 25.w,
            child: Image(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

class HomepageNavButton extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback onTap;
  const HomepageNavButton({
    Key? key,
    required this.text,
    required this.image,
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
              decoration: BoxDecoration(
                  color: white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill)),
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
