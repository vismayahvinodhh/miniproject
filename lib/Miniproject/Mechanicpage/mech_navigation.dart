import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mech_rating.dart';
import 'mech_servicehome.dart';
import 'mech_service.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> pages = [MechReq(), MechService(), MechRating()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            currentIndex: selectedIndex,
            unselectedLabelStyle:TextStyle(color: Colors.black),
            selectedLabelStyle: TextStyle(color: Colors.black),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  label: 'Request',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.settings,
                    size: 30,
                  ),
                  label: 'Service',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.star,
                    size: 30,
                  ),
                  label: 'Rating',
                  backgroundColor: Colors.white),
            ]),
      ),
    );
  }
}
