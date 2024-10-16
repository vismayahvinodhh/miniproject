import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mech_service.dart';


class MechReq1 extends StatefulWidget {
  const MechReq1({super.key});

  @override
  State<MechReq1> createState() => _MechReq1State();
}

class _MechReq1State extends State<MechReq1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MechService(),));
            },
            child: Card(
              child: Container(
                width: 300.w,
                height: 100.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colors.blue.shade100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 30.w,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30.r,
                              backgroundImage:
                              AssetImage('assets/boss.png'),
                            ),
                            Text('Name',style: TextStyle(color: Colors.black),)
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 30.w),
                          child: Column(
                            children: [
                              Text('Fuel leaking'),
                              Text('Date'),
                              Text('Time'),
                              Text('Place'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
