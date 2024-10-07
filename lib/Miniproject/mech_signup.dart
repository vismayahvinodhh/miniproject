import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MechSignUp extends StatefulWidget {
  const MechSignUp({super.key});

  @override
  State<MechSignUp> createState() => _MechSignUpState();
}

class _MechSignUpState extends State<MechSignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.blue.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 20.w),
                child: Row(
                  children: [Icon(Icons.arrow_back_ios_new_rounded)],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/tow_1367212.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              Text(
                'SIGN UP',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25.sp),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w),
                child: Row(
                  children: [
                    Text(
                      'Enter username',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r)),
                      filled: true,
                      fillColor: Colors.white,
                      label: Text(
                        'Username',
                        style:TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w),
                child: Row(
                  children: [
                    Text(
                      'Enter Phone number',
                      style:TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
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
                      fillColor: Colors.white,
                      hintText: 'Phone number',
                      hintStyle:
                      TextStyle(fontWeight: FontWeight.w300)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 5.h),
                child: Row(
                  children: [
                    Text(
                      'Enter your email',
                      style:TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r)),
                      filled: true,
                      fillColor: Colors.white,
                      label: Text(
                        'Enter email',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 5.h),
                child: Row(
                  children: [
                    Text(
                      'Enter your work experience  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r)),
                      filled: true,
                      fillColor: Colors.white,
                      label: Text(
                        'Enter your experience  ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 5.h),
                child: Row(
                  children: [
                    Text(
                      'Enter your work shop name  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r)),
                      filled: true,
                      fillColor: Colors.white,
                      label: Text(
                        'Enter your shop name',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w),
                child: Row(
                  children: [
                    Text(
                      'Enter Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your password ',
                      hintStyle:
                     TextStyle(fontWeight: FontWeight.w300)),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 190.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
