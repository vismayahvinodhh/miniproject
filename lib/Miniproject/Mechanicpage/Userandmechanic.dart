import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mech_login.dart';


class UserorMechanic extends StatefulWidget {
  const UserorMechanic({super.key});

  @override
  State<UserorMechanic> createState() => _UserorMechanicState();
}

class _UserorMechanicState extends State<UserorMechanic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 30.w),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('tow_1367212.png'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.w, top: 30.h),
              child: Row(
                children: [
                  Text(
                    'Who you are',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MechLogin();
                      },
                    ));
                  },
                  child: Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: EdgeInsets.all(10.0.r),
                      child: Text(
                        'Mechanic',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Padding(
                    padding: EdgeInsets.all(10.0.r),
                    child: Text(
                      'User',
                      style:TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17.sp),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Admin Login',
              style: TextStyle(
                  color:Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp),
            ),
            Spacer(),
            Container(
              width: 200.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color:Colors.blue,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                child: Text(
                  'CONTINUE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
