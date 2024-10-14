import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'admin8.dart';
import 'admin9.dart';


class Mechanicbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 95,
          backgroundColor: Colors.blue.shade50,
          title: CircleAvatar(
            backgroundImage: AssetImage("assets/girl.jpg"),
            radius: 27,
          ),
          bottom: TabBar(
            padding: EdgeInsets.only(left: 30, right: 30),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade400,
            ),
            tabs: [
              Tab(
                child: Text(
                  'User',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Mechanic',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            User(), // Call the first class
            Mechanic(),
            // Call the second class
          ],
        ),
      ),
    );
  }
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("UserCollection").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          final User_sign=snapshot.data?.docs??[];
          return ListView.builder(
            itemCount: User_sign.length,
            itemBuilder: (context, index) {
              final doc=User_sign[index];
              final uuser_signup=doc.data()as Map<String,dynamic>;
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return vechicle_6();
                  },));
                },
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage("${uuser_signup["Profile"] ?? ""}"),fit: BoxFit.cover
                                )),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 82),
                                child: Text(
                                  "Username:${uuser_signup["Username"] ?? ""}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Text(
                                "Location:${uuser_signup["Location"] ?? ""}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              Text(
                                "Password:${uuser_signup["Password"] ?? ""}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              Text(
                                "Phone Number:${uuser_signup["Phone Number"] ?? ""}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              Text(
                                "Email:${uuser_signup["Email"] ?? ""}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            // itemCount: 20,
          );
        },

      ),
    );
  }
}



class Mechanic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("MechCollection").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          final Signmech=snapshot.data?.docs??[];
          return ListView.builder(
            itemCount: Signmech.length,
            itemBuilder: (context, index) {
              final doc=Signmech[index];
              final Mech_view=doc.data()as Map<String,dynamic>;
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Vehicle7();
                  },));
                },
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("${Mech_view["Profile"] ?? ""}"),
                                )),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 82),
                                child: Text(
                                  "Name:${Mech_view["Username"] ?? ""}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Mobile Number:${Mech_view["Phone Number"] ?? ""}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Email:${Mech_view["Email"] ?? ""}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),

                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Location:${Mech_view["Location"] ?? ""}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Password:${Mech_view["Password"] ?? ""}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Work Experience:${Mech_view["Work Experience"] ?? ""}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Workshop name:${Mech_view["Workshop name"] ?? ""}",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),

                              SizedBox(
                                height: 9,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            // itemCount: 20,
          );
        },
      ),
    );
  }
}