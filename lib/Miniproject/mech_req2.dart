import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mech_serviceaccepted.dart';


class MechReq2 extends StatefulWidget {
  const MechReq2({super.key});

  @override
  State<MechReq2> createState() => _MechReq2State();
}

class _MechReq2State extends State<MechReq2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MechAccepted(),));
            },
            child: Card(
              child: Container(
                width: 300.w,
                height: 100.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade50),
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
                              backgroundColor: Colors.blue.shade100,
                              radius: 30.r,
                              backgroundImage:
                              AssetImage('assets/boss.png'),
                            ),
                            Text('Name')
                          ],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          children: [
                            Text('Fuel leaking'),
                            Text('Date'),
                            Text('Time'),
                            Text('Place'),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 110.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Payment pending',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
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
