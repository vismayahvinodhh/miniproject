import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mech_profilee.dart';
import 'mech_navigation.dart';


class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile>
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
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNav(),));
                      },
                      child: Icon(Icons.arrow_back_ios_new_outlined)),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return EditProfile();
                        },));
                      },
                      child: Icon(Icons.edit_note_outlined)
                    ),
                  )
                ],
              ),
            ),
            CircleAvatar(
              radius: 70.r,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            SizedBox(
              height: 20.h,
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
                      'Name',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
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
                      'Username',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
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
                      'Phone number',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
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
                      'Email',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
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
                      'Experience',
                      style:TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
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
                      'Location',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
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
                      'Shop name',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
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
                width: 200.r,
                height: 50.r,
                decoration: BoxDecoration(
                    color:Colors.blue,
                    borderRadius: BorderRadius.circular(10).r),
                child: Center(
                  child: Text(
                    'Done',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.r),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
