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
      body: SingleChildScrollView(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              Container(
                height: 14.h,
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
                        MarketRecentButton(
                          companyImagePath:
                              'assets/images/company_images/wipro.jpeg',
                          companyName: 'Wipro',
                        ),
                        MarketRecentButton(
                          companyImagePath:
                              'assets/images/company_images/mrf.png',
                          companyName: 'MRF',
                        ),
                        MarketRecentButton(
                          companyImagePath:
                              'assets/images/company_images/hdfc.png',
                          companyName: 'HDFC',
                        ),
                        MarketRecentButton(
                          companyImagePath:
                              'assets/images/company_images/ambuja_cement.jpg',
                          companyName: 'Ambuja Cement',
                        ),
                        MarketRecentButton(
                          companyImagePath:
                              'assets/images/company_images/hcl.jpg',
                          companyName: 'HCL',
                        ),
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
              CompanyListTile(
                companyName: 'MRF',
                companyNickName: 'MRF',
                companyImagePath: 'assets/images/company_images/mrf.png',
                companyStockCurrentPrice: '74654',
                priceChangePercentage: '0.54',
                runningProfit: false,
              ),
              CompanyListTile(
                companyName: 'HDFC',
                companyNickName: 'HDFC',
                companyImagePath: 'assets/images/company_images/hdfc.png',
                companyStockCurrentPrice: '13392',
                priceChangePercentage: '1.85',
                runningProfit: true,
              ),
              CompanyListTile(
                companyName: 'Wipro',
                companyNickName: 'Wipro',
                companyImagePath: 'assets/images/company_images/wipro.png',
                companyStockCurrentPrice: '466.95',
                priceChangePercentage: '3',
                runningProfit: true,
              ),
              CompanyListTile(
                companyName: 'Ambuja Cement',
                companyNickName: 'Ambuja Cement',
                companyImagePath:
                    'assets/images/company_images/ambuja_cement.jpg',
                companyStockCurrentPrice: '366',
                priceChangePercentage: '0.25',
                runningProfit: true,
              ),
              CompanyListTile(
                companyName: 'HCL',
                companyNickName: 'HCL',
                companyImagePath: 'assets/images/company_images/hcl.jpg',
                companyStockCurrentPrice: '1003.9',
                priceChangePercentage: '2.37',
                runningProfit: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CompanyListTile extends StatelessWidget {
  final String companyName;
  final String companyNickName;
  final String companyImagePath;
  final String companyStockCurrentPrice;
  final bool runningProfit;
  final String priceChangePercentage;

  const CompanyListTile({
    Key? key,
    required this.companyName,
    required this.companyNickName,
    required this.companyImagePath,
    required this.companyStockCurrentPrice,
    required this.priceChangePercentage,
    required this.runningProfit,
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
          child: Image(
            image: AssetImage(companyImagePath),
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        SizedBox(
          width: 50.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                companyName,
                style: bodyTextsmall.copyWith(height: 1.2, color: black),
              ),
              Text(
                companyNickName,
                style: bodyTextExtrasmall.copyWith(color: greyDarkShade),
              )
            ],
          ),
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              companyStockCurrentPrice,
              style: bodyTextsmall.copyWith(
                color: black,
              ),
            ),
            Text(
              ((runningProfit ? '+' : '-') + priceChangePercentage + '%'),
              style: bodyTextsmall.copyWith(
                color: runningProfit ? greenDark : red,
              ),
            )
          ],
        )
      ]),
    );
  }
}

class MarketRecentButton extends StatelessWidget {
  final String companyImagePath;
  final String companyName;
  const MarketRecentButton({
    Key? key,
    required this.companyImagePath,
    required this.companyName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 7.h,
      height: 10.h,
      child: Column(
        children: [
          Container(
            height: 6.h,
            width: 6.h,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(1.h),
              // border: Border.all(color: purpleShade1, width: 1),
              image: DecorationImage(
                image: AssetImage(companyImagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            companyName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: bodyTextExtrasmall.copyWith(color: black),
          )
        ],
      ),
    );
  }
}
