import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MechAccepted extends StatefulWidget {
  const MechAccepted({super.key});

  @override
  State<MechAccepted> createState() => _MechAcceptedState();
}

class _MechAcceptedState extends State<MechAccepted> {
  String? radioValue = 'Completed';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 10.h),
                  child: Icon(Icons.arrow_back_ios_new_outlined),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: 300.w,
              height: 100.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.blue.shade100),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/icons/boss.png'),
                      ),
                      Text(
                        'Name',
                        style:TextStyle(fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Fuel leaking', style: TextStyle(fontWeight: FontWeight.normal)),
                      Text('Date', style:TextStyle(fontWeight: FontWeight.normal)),
                      Text('Time', style: TextStyle(fontWeight: FontWeight.normal)),
                      Text('Place', style:TextStyle(fontWeight: FontWeight.normal)),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100.h, left: 30.w),
              child: Row(
                children: [
                  Text(
                    'Add status',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 20.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Radio(
                  value: 'Completed',
                  groupValue: radioValue,
                  onChanged: (value) {
                    setState(() {
                      radioValue = value;
                    });
                  },
                ),
                Text(
                  'Completed',
                  style: TextStyle(),
                ),
                SizedBox(
                  width: 40.w,
                ),
                Radio(
                  value: 'Not Completed',
                  groupValue: radioValue,
                  onChanged: (value) {
                    setState(() {
                      radioValue = value;
                    });
                  },
                ),
                Text(
                  'Not Completed',
                  style:TextStyle(),
                ),
              ],
            ),
            radioValue == 'Completed'
                ? Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.w, top: 60.h),
                  child: Row(
                    children: [
                      Text(
                        'Amount',
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 187.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.currency_rupee_sharp),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        '2000/-',
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 56.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 200.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            )
                : Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.w, top: 60.h),
                  child: Row(
                    children: [
                      Text(
                        'Reject reason',
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 339.w,
                  height: 170.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all()),
                ),
                SizedBox(
                  height: 30.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 200.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
