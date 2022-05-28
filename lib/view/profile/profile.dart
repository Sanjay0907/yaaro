import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:yaaro/utils/colors.dart';
import 'package:yaaro/utils/text_style.dart';

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
        automaticallyImplyLeading: true,
        backgroundColor: blue,
        elevation: 0,
      ),
      backgroundColor: blue,
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 2.h),
                height: 20.h,
                width: 20.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://picsum.photos/seed/657/600'))),
              ),
              UserProfileTextField(
                text: 'Name :',
                controller: name,
              ),
              UserProfileTextField(
                text: 'Date of Birth :',
                controller: dateOfBirth,
              ),
              UserProfileTextField(
                text: 'Contact No. :',
                controller: contactNo,
              ),
              UserProfileTextField(
                text: 'Email :',
                controller: email,
              ),
              UserProfileTextField(
                text: 'PAN No. :',
                controller: panNo,
              ),
              UserProfileTextField(
                text: 'Unique Client Code :',
                controller: uniqueClientCode,
              ),
              InkWell(
                onTap: () {},
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
