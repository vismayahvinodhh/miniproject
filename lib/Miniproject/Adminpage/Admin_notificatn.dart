import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'admin_addnotificatn.dart';

class AdminNotificationpage extends StatefulWidget {
  const AdminNotificationpage({super.key});

  @override
  State<AdminNotificationpage> createState() => _AdminNotificationpageState();
}

class _AdminNotificationpageState extends State<AdminNotificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.blue[700],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Add_notification();
              },
            ),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/girl.jpg"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            Expanded(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("Admincollection").snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    final Admin_notify=snapshot.data?.docs??[];
                   return ListView.builder(
                     itemCount: Admin_notify.length,
                     itemBuilder: (context, index) {
                       final doc=Admin_notify[index];
                       final Admin_addnoti=doc.data()as Map<String,dynamic>;
                       return Card(
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Text(
                                   "Matter:${Admin_addnoti["Matter"] ?? ""}",
                                   style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 20,
                                       fontWeight: FontWeight.bold),
                                 ),
                               ],
                             ),
                             Row(
                               children: [
                                 Text(
                                   "${Admin_addnoti["Content"] ?? ""}",
                                   style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 16,
                                       fontWeight: FontWeight.normal),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       );
                     },
                   );
                 },
                ))
          ],
        ),
      ),
    );
  }
}
