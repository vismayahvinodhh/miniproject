import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniproject/Miniproject/Mechanicpage/usermechadmin.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mech_navigation.dart';
import 'mech_signup.dart';

class MechLogin extends StatefulWidget {
  const MechLogin({super.key});

  @override
  State<MechLogin> createState() => _MechLoginState();
}
String id ="";
class _MechLoginState extends State<MechLogin> {
  void mechLogin() async {
    final user = await FirebaseFirestore.instance
        .collection('MechCollection')
        .where('Username', isEqualTo: Username_ctrl.text)
        .where('Password', isEqualTo: Password_ctrl.text)

        .get();
    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;


      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString('id', id);

      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return Home();
        },
      ));
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            "username and password error",
            style: TextStyle(color: Colors.red),
          )));
    }


  }
  var Username_ctrl = TextEditingController();
  var Password_ctrl =TextEditingController();
  Future<void>Mechhlogin()async{

  }
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.blue.shade100,
        body: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/tow_1367212.png'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'LOGIN',
              style:TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h),
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
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: TextFormField( controller: Username_ctrl,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: Colors.white,
                    label: Text(
                      'Your Username',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h),
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
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: TextFormField( controller: Password_ctrl,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Your password',
                    hintStyle:TextStyle(fontWeight: FontWeight.w300)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 180.w, top: 20.h),
              child: Text(
                'Forgot password?',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                Mechhlogin();
              },
              child: Container(
                width: 200.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: Text(
                    'LOGIN',
                    style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do you have account? '),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return MechSignUp();
                        },
                      ));
                    },
                    child: Text(
                      'Sign up',
                      style:TextStyle(color: Colors.blue),
                    ))
              ],
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
