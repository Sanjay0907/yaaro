import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class GrowMoneyNavButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const GrowMoneyNavButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 11.h,
      width: 10.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              // padding: EdgeInsets.symmetric(vertical: 0.5.h),
              margin: EdgeInsets.only(right: 2.h),
              height: 7.h,
              width: 7.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image:
                          NetworkImage('https://picsum.photos/seed/657/600'))),
            ),
          ),
          Text(
            text + '   ',
            style: bodyTextsmall.copyWith(color: black),
          )
        ],
      ),
    );
  }
}
