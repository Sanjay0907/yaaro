import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';

class Story extends StatelessWidget {
  final String imagePath;
  final String quote;
  final String name;

  const Story(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.quote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: Image(
                image: AssetImage(
                  imagePath,
                ),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 5.h,
              left: 10.w,
              child: SizedBox(
                height: 40.h,
                width: 80.w,
                child: Column(
                  children: [
                    Text(
                      quote,
                      textAlign: TextAlign.center,
                      style: heading.copyWith(
                        color: white,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      width: 80.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            name,
                            style: heading.copyWith(
                              color: white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Positioned(
            //   bottom: 15.h,
            //   left: 10.w,
            //   // child:
            // ),
            Positioned(
              top: 5.h,
              left: 3.w,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 6.h,
                  width: 6.h,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  alignment: Alignment.center,
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: black,
                    size: 3.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
