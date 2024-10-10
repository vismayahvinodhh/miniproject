import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Center(
          child: Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/tow_1367212.png'),
                    fit: BoxFit.fill)),
          ),
        ));
  }
}
