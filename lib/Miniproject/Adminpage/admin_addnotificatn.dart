import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Admin_notificatn.dart';

class Add_notification extends StatefulWidget {
  const Add_notification({super.key});

  @override
  State<Add_notification> createState() => _Add_notificationState();
}

class _Add_notificationState extends State<Add_notification> {
  Future<void>Notication_add()async{
    FirebaseFirestore.instance.collection("Admincollection").add({
      "Matter":Matter_ctrl.text,
      "Content":Content_ctrl.text,
    });
    print("Added Successfully");
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AdminNotificationpage();
    },));
  }
  var Matter_ctrl = TextEditingController();
  var Content_ctrl = TextEditingController();
  final formkey = GlobalKey<FormState>(); //for validations
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Enter Matter",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    TextFormField(controller: Matter_ctrl,
                      decoration: InputDecoration(
                          hintText: ("Matter"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(0)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, bottom: 40, top: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Enter Content",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 400,
                      child: TextField(
                        controller:Content_ctrl ,
                        maxLines: 20, //or null
                        decoration: InputDecoration.collapsed(
                            hintText: "  content",
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(0)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {
                    Notication_add();
                  } ,
                    child: Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text("Submit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900, fontSize: 20))),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}