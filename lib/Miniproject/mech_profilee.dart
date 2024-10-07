import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mech_navigation.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new_outlined),
                ],
              ),
            ),
            CircleAvatar(
              radius: 60.r,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor:Colors.blue.shade50,
                    label: Text(
                      'Name',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor:Colors.blue.shade50,
                    label: Text(
                      'Username',
                      style:TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Phone number',
                    style:TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor:Colors.blue.shade50,
                    label: Text(
                      'Phone number',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor:Colors.blue.shade50,
                    label: Text(
                      'Enter email',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Work experience',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor:Colors.blue.shade50,
                    label: Text(
                      'Enter your experience',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Your location',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor:Colors.blue.shade50,
                    label: Text(
                      'Enter your location',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'work shop name',
                    style:TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: Colors.blue.shade50,
                    label: Text(
                      'Enter your shop name',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return BottomNav();
                  },
                ));
              },
              child: Container(
                width: 165.w,
                height: 27.h,
                decoration: BoxDecoration(
                    color:Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
