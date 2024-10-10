import 'package:flutter/material.dart';

import 'Admin_homeuser.dart';

class vechicle_6 extends StatefulWidget {
  const vechicle_6({super.key});

  @override
  State<vechicle_6> createState() => _vechicle_6State();
}

class _vechicle_6State extends State<vechicle_6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 800,
              width: 400,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: InkWell(onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return User();
                              },));
                            },
                                child: Icon(Icons.arrow_back_ios_sharp))),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image:
                                    AssetImage('assets/businessman.png'))),
                          ),
                        ),
                        Center(
                            child: Text(
                              'Name',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )),
                        Center(
                            child: Text(
                              'Location',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Enter Username',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Username',
                              focusColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      style: BorderStyle.none,
                                      color: Colors.white))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Phone number',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: '0000000000',
                              focusColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.none))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Email address',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Example@gmail.com',
                              focusColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.none))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 50),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.blue[300],
                              ),
                              child: Center(
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red[200],
                              ),
                              child: Center(
                                  child: Text(
                                    'reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
