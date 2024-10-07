import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mech_notificatn.dart';
import 'mech_editprofile.dart';
import 'mech_req2.dart';
import 'mechreq1.dart';

class MechReq extends StatefulWidget {
  const MechReq({super.key});

  @override
  State<MechReq> createState() => _MechReqState();
}

class _MechReqState extends State<MechReq> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 20.w),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewProfile();
                          },
                        ));
                      },
                      child: CircleAvatar(
                        radius: 27.r,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                    ),
                    Spacer(),
                    Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MechNotification(),
                                ));
                          },
                          child: Container(
                            width: 40.r,
                            height: 40.r,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                  'assets/notification_15184701.png'),
                            )),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 350.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: TabBar(
                    dividerColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade100,
                    ),
                    tabs: [Tab(text: 'Request'), Tab(text: 'Accepted')]),
              ),
              SizedBox(
                height: 40.h,
              ),
              Expanded(child: TabBarView(children: [MechReq1(), MechReq2()])),
            ],
          )),
    );
  }
}
