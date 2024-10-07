import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MechService extends StatefulWidget {
  const MechService({super.key});

  @override
  State<MechService> createState() => _MechServiceState();
}

class _MechServiceState extends State<MechService> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Service',style: TextStyle(),),
          centerTitle: true,
          backgroundColor: Colors.blue.shade50,
          leading: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30),
              child: Card(
                child: Container(
                  width: 300.w,
                  height: 300.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.blue.shade50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Type puncture service'),
                          SizedBox(
                            width: 100.w,
                          ),
                          Icon(CupertinoIcons.delete_solid)
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Engine service'),
                          SizedBox(
                            width: 150.w,
                          ),
                          Icon(CupertinoIcons.delete_solid)
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Type puncture service'),
                          SizedBox(
                            width: 103.w,
                          ),
                          Icon(CupertinoIcons.delete_solid)
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Type puncture service'),
                          SizedBox(
                            width: 104.w,
                          ),
                          Icon(CupertinoIcons.delete_solid)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AddService();
              },
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 45.sp,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0.r),
              side: BorderSide(color: Colors.black)),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

class AddService extends StatefulWidget {
  const AddService({super.key});

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue.shade50,
      title: Text('Add service'),
      actions: <Widget>[
        TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.r)),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white),
        ),
        SizedBox(
          height: 150.h,
        ),
        Center(
          child: Container(
            width: 140.w,
            height: 45.h,
            decoration: BoxDecoration(
                color:Colors.blue.shade50,
                borderRadius: BorderRadius.circular(10.r)),
            child: Center(
              child: Text(
                'Add',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
