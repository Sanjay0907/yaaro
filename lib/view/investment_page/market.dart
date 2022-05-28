import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class MarketData extends StatelessWidget {
  const MarketData({Key? key}) : super(key: key);

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
                      image:
                          NetworkImage('https://picsum.photos/seed/657/600'))),
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              Container(
                height: 13.h,
                width: 100.w,
                color: greyshade1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Recent',
                          style: bodyTextsmall.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        MarketRecentButton(),
                        MarketRecentButton(),
                        MarketRecentButton(),
                        MarketRecentButton(),
                        MarketRecentButton(),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 9.h,
                width: 100.w,
                child: Container(
                  // color: greyDarkShade,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                      color: greyDarkShade),
                  margin: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 1.h,
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                    // keyboardType: TextInputType.,
                    cursorColor: Colors.black,
                    style: textFieldStyle.copyWith(color: white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: bodyTextsmall.copyWith(color: white),
                      suffixIcon: FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: white,
                        size: 3.h,
                      ),
                    ),
                  ),
                ),
              ),
              CompanyListTile(),
              CompanyListTile(),
              CompanyListTile(),
              CompanyListTile(),
              CompanyListTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class CompanyListTile extends StatelessWidget {
  const CompanyListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 100.w,
      padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 2.w),
      margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1.h),
        color: greyshade1,
      ),
      child: Row(children: [
        SizedBox(
          height: 7.h,
          width: 7.h,
          child: const Image(
            image: AssetImage('assets/images/tcs.png'),
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        SizedBox(
          width: 50.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Relience Industaries Limited',
                style: bodyTextsmall.copyWith(height: 1.2, color: black),
              ),
              Text(
                'Relience',
                style: bodyTextExtrasmall.copyWith(color: greyDarkShade),
              )
            ],
          ),
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '2460',
              style: bodyTextsmall.copyWith(
                color: black,
              ),
            ),
            Text(
              '-2%',
              style: bodyTextsmall.copyWith(
                color: red,
              ),
            )
          ],
        )
      ]),
    );
  }
}

class MarketRecentButton extends StatelessWidget {
  const MarketRecentButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 6.h,
          width: 6.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/seed/657/600'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          'HDFC',
          style: bodyTextsmall.copyWith(color: black),
        )
      ],
    );
  }
}
