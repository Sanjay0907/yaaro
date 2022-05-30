import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/view/invite_friends/invite_friends.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class ProfileNew extends StatelessWidget {
  const ProfileNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController =
        TextEditingController(text: 'Arpit Kumar');
    TextEditingController mobileController =
        TextEditingController(text: '9219527890');
    TextEditingController emailController =
        TextEditingController(text: 'arpit@gmail.com');
    TextEditingController dobController =
        TextEditingController(text: '12-03-2003');
    TextEditingController genderController =
        TextEditingController(text: 'Male');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            height: 3.h,
            width: 3.h,
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.angleLeft,
                color: black,
                size: 3.h,
              ),
            ),
          ),
        ),
        backgroundColor: white,
        title: Text(
          'Profile',
          style: bodyTextMediun.copyWith(color: black),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 15.h,
                width: 15.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/user.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0.5.h),
                height: 10.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: purpleLight,
                  borderRadius: BorderRadius.circular(1.h),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 50.w,
                      height: 10.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'YARO Coin ',
                            style: bodyTextsmall.copyWith(color: black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '0',
                                style: bodyTextMediun.copyWith(
                                  color: amber,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              SizedBox(
                                height: 5.h,
                                width: 5.h,
                                child: const Image(
                                  image: AssetImage(
                                      'assets/images/digital_coin.png'),
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 1.h),
                          height: 6.h,
                          width: 38.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: purple,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Redeem Coins',
                            style: bodyTextsmall.copyWith(color: white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InviteFriends())),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 0.5.h),
                  height: 10.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.h),
                    color: purpleLight,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5.w),
                      Container(
                        height: 9.h,
                        width: 9.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/friends.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'INVITE YOUR FRIENDS',
                        style: bodyTextsmall.copyWith(color: black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Row(
                children: [
                  Text(
                    'Personal Information',
                    style: bodyTextsmall.copyWith(color: black),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.h),
                    // height: 30.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                      color: purpleLight,
                    ),
                    child: Column(
                      children: [
                        UserPersonalDetailsTextField(
                          textEditingController: nameController,
                          label: 'Name',
                          prefixIconData: FontAwesomeIcons.user,
                          suffixIconData: FontAwesomeIcons.pencil,
                        ),
                        UserPersonalDetailsTextField(
                          textEditingController: mobileController,
                          label: 'Mobile Number',
                          prefixIconData: FontAwesomeIcons.phone,
                          suffixIconData: FontAwesomeIcons.pencil,
                        ),
                        UserPersonalDetailsTextField(
                          textEditingController: emailController,
                          label: 'Email',
                          prefixIconData: FontAwesomeIcons.solidEnvelope,
                          suffixIconData: FontAwesomeIcons.pencil,
                        ),
                        UserPersonalDetailsTextField(
                          textEditingController: dobController,
                          label: 'BirthDate',
                          prefixIconData: FontAwesomeIcons.calendar,
                          suffixIconData: FontAwesomeIcons.pencil,
                        ),
                        UserPersonalDetailsTextField(
                          textEditingController: genderController,
                          label: 'Gender',
                          prefixIconData: FontAwesomeIcons.mars,
                          suffixIconData: FontAwesomeIcons.pencil,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 10.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.h),
                  color: purpleLight,
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    FaIcon(
                      FontAwesomeIcons.arrowRightToBracket,
                      color: red,
                      size: 4.h,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      'Log Out',
                      style: bodyTextMediun.copyWith(color: red),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 10.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: purpleLight,
                  borderRadius: BorderRadius.circular(1.h),
                ),
                alignment: Alignment.center,
                child: const Image(
                  image: AssetImage('assets/images/yaro_logo.png'),
                  fit: BoxFit.fitHeight,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UserPersonalDetailsTextField extends StatelessWidget {
  final String label;
  final TextEditingController textEditingController;
  final IconData prefixIconData;
  final IconData suffixIconData;
  const UserPersonalDetailsTextField({
    Key? key,
    required this.textEditingController,
    required this.label,
    required this.prefixIconData,
    required this.suffixIconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.5.h),
      height: 10.h,
      width: 100.w,
      child: TextField(
        controller: textEditingController,
        style: bodyTextExtrasmall.copyWith(color: black),
        decoration: InputDecoration(
            label: Text(
              label,
              style: bodyTextsmall.copyWith(color: grey),
            ),
            suffixIcon: SizedBox(
              height: 9.h,
              width: 9.w,
              child: Center(
                child: FaIcon(
                  suffixIconData,
                  color: black,
                  size: 3.h,
                ),
              ),
            ),
            prefixIcon: SizedBox(
              height: 8.h,
              width: 8.h,
              child: Center(
                child: FaIcon(
                  prefixIconData,
                  color: black,
                  size: 3.h,
                ),
              ),
            )),
      ),
    );
  }
}
