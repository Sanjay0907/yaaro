import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/view/auth/mobile_no.dart';
import 'package:yaaro/view/auth/otp.dart';
import 'package:yaaro/view/home_page/homepage.dart';
import 'package:yaaro/view/invite_friends/invite_friends.dart';
import 'package:yaaro/view/market/market.dart';
import 'package:yaaro/view/market/stock_details.dart';
import 'package:yaaro/view/onbourding/details_screen.dart';
import 'package:yaaro/view/onbourding/welcome_screen.dart';
import 'package:yaaro/view/portfolio/portfolio.dart';
import 'package:yaaro/view/profile/profile.dart';
import 'package:yaaro/view/profile/profile_new.dart';
import 'package:yaaro/view/stories/story.dart';

void main() {
  runApp(const Yaaro());
}

class Yaaro extends StatelessWidget {
  const Yaaro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
      );
    });
  }
}
