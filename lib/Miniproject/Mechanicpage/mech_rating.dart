import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MechRating extends StatefulWidget {
  const MechRating({super.key});

  @override
  State<MechRating> createState() => _MechRatingState();
}

class _MechRatingState extends State<MechRating> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Rating',
            style:TextStyle(),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade50,
          leading: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              'The rating given to you',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 30.w, vertical: 30),
                    child: Card(
                      child: Container(
                        width: 300.w,
                        height: 130.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.blue.shade50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.r,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage:
                                      AssetImage('assets/boss.png'),
                                    ),
                                    Text(
                                      'Name',
                                      style: TextStyle(fontWeight: FontWeight.normal),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Engine work'),
                                    Text('Date'),
                                    Text('Time'),
                                    Text('Place'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Rating',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.sp,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.sp,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.sp,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.sp,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          size: 15.sp,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '4/5',
                                      style:TextStyle(fontSize: 10.sp),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
