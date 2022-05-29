import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';
import 'package:yaaro/view/invite_friends/invite_friends.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController(text: 'Arpit Misra');
    TextEditingController dateOfBirth = TextEditingController(text: 'ABCDEFGH');
    TextEditingController contactNo = TextEditingController(text: 'ABCDEFGH');
    TextEditingController email = TextEditingController(text: 'ABCDEFGH');
    TextEditingController panNo = TextEditingController(text: 'ABCDEFGH');
    TextEditingController uniqueClientCode =
        TextEditingController(text: 'ABCDEFGH');

    return Scaffold(
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
                  )),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Hi, Arpit',
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
      backgroundColor: blue,
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              Container(
                margin: EdgeInsets.only(right: 2.h),
                height: 15.h,
                width: 15.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/user.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                width: 100.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileDetails(
                      heading: 'Name',
                      text: 'Arpit Kumar',
                      showIcon: true,
                      iconBackGroundColor: white,
                      iconData: FontAwesomeIcons.pencil,
                      iconColor: black,
                    ),
                    ProfileDetails(
                      heading: 'Date of Birth',
                      text: '12/06/2000',
                      showIcon: true,
                      iconData: FontAwesomeIcons.calendarDays,
                      iconBackGroundColor: blueShade1,
                      iconColor: white,
                    ),
                    ProfileDetails(
                      heading: 'Contact No.',
                      text: '9340076746',
                      showIcon: true,
                      iconBackGroundColor: white,
                      iconData: FontAwesomeIcons.pencil,
                      iconColor: black,
                    ),
                    ProfileDetails(
                      heading: 'Email',
                      text: 'arpit@gmai.com',
                      showIcon: true,
                      iconBackGroundColor: white,
                      iconData: FontAwesomeIcons.pencil,
                      iconColor: black,
                    ),
                    ProfileDetails(
                      heading: 'Parent\'s PAN',
                      text: 'MBYRQ4678P',
                      showIcon: true,
                      iconBackGroundColor: white,
                      iconData: FontAwesomeIcons.pencil,
                      iconColor: black,
                    ),
                    ProfileDetails(
                      heading: 'Unique Client Code',
                      text: '12886421',
                      showIcon: true,
                      iconBackGroundColor: white,
                      iconData: FontAwesomeIcons.pencil,
                      iconColor: black,
                    ),
                  ],
                ),
              ),
              // UserProfileTextField(
              //   text: 'Name :',
              //   controller: name,
              // ),
              // UserProfileTextField(
              //   text: 'Date of Birth :',
              //   controller: dateOfBirth,
              // ),
              // UserProfileTextField(
              //   text: 'Contact No. :',
              //   controller: contactNo,
              // ),
              // UserProfileTextField(
              //   text: 'Email :',
              //   controller: email,
              // ),
              // UserProfileTextField(
              //   text: 'PAN No. :',
              //   controller: panNo,
              // ),
              // UserProfileTextField(
              //   text: 'Unique Client Code :',
              //   controller: uniqueClientCode,
              // ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InviteFriends())),
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 0.5.h),
                    height: 8.8.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'INVITE YOUR FRIENDS',
                      style: heading,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileDetails extends StatelessWidget {
  final String heading;
  final String text;
  final bool showIcon;
  final IconData? iconData;
  final Color iconBackGroundColor;
  final Color iconColor;

  const ProfileDetails({
    Key? key,
    required this.heading,
    required this.text,
    required this.showIcon,
    this.iconData,
    required this.iconColor,
    required this.iconBackGroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: 65.w,
      margin: EdgeInsets.symmetric(vertical: 1.h),
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5.h),
            bottomRight: Radius.circular(5.h),
          ),
          color: white),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              heading + ' :',
              style: bodyTextExtrasmall.copyWith(fontWeight: FontWeight.w800),
            ),
            Text(
              text,
              style: bodyTextExtrasmall,
            )
          ],
        ),
        const Spacer(),
        if (showIcon == true)
          Container(
            height: 6.h,
            width: 6.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconBackGroundColor,
            ),
            alignment: Alignment.center,
            child: FaIcon(
              // FontAwesomeIcons.calendarDays,
              iconData,
              size: 3.h,
              color: iconColor,
            ),
          )
      ]),
    );
  }
}

class UserProfileTextField extends StatelessWidget {
  const UserProfileTextField(
      {Key? key, required this.controller, required this.text})
      : super(key: key);

  final TextEditingController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.5.h),
      height: 8.8.h,
      width: 80.w,
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: .5.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: bodyTextExtrasmall.copyWith(height: 1),
          ),
          Row(
            children: [
              SizedBox(
                width: 60.w,
                child: TextField(
                  controller: controller,
                  style: bodyTextExtrasmall,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Spacer(),
              FaIcon(
                FontAwesomeIcons.pencil,
                color: black,
                size: 2.5.h,
              )
            ],
          )
        ],
      ),
    );
  }
}
