import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniproject/Miniproject/Userpage/user_mechaniclist.dart';
import 'package:miniproject/Miniproject/Userpage/user_signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Mechanicpage/mech_login.dart';
import '../Mechanicpage/usermechadmin.dart';


class User_login extends StatefulWidget {
  const User_login({super.key});

  @override
  State<User_login> createState() => _User_loginState();
}

class _User_loginState extends State<User_login> {
  void userlogin() async {
    final user = await FirebaseFirestore.instance
        .collection('UserCollection')
        .where('Username', isEqualTo: Username_ctrl.text)
        .where('Password', isEqualTo: Password_ctrl.text)

        .get();
    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;


      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString('id', id);

      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return User_mechanic_list();
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Container(
                      width: 200.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/tow_1367212.png"))),
                    ),
                  ),
                  Center(
                      child: Text(
                        'LOGIN',
                        style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w900),
                      ))
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Enter Username',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      controller: Username_ctrl,
                      decoration: InputDecoration(
                          hintText: 'Username',
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Enter Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      controller: Password_ctrl,
                      decoration: InputDecoration(
                          hintText: 'Enter Passsword',
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170),
                    child: Text(
                      "Forgot password ?",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(onTap: () {
                  userlogin();
                },
                  child: Container(
                    height: 50.h,
                    width: 220.w,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do you have account ?",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return User_signup();
                      },));
                    },
                    child: Text(
                      " Sign up",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}