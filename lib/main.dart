import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Miniproject/Adminpage/Admin_homeuser.dart';
import 'Miniproject/Adminpage/Admin_notificatn.dart';
import 'Miniproject/Adminpage/Navigatnpageadmin.dart';
import 'Miniproject/Adminpage/admin_addnotificatn.dart';
import 'Miniproject/Mechanicpage/Userandmechanic.dart';
import 'Miniproject/Userpage/user_profile.dart';
import 'Miniproject/Userpage/user_rating.dart';
import 'Miniproject/Userpage/user_signup.dart';
import 'Miniproject/Userpage/user_notification.dart';
import 'Miniproject/Userpage/user_mechanicfailed.dart';
import 'Miniproject/Userpage/user_mechanidetail.dart';
import 'Miniproject/Userpage/user_mechanicbill.dart';
import 'Miniproject/Userpage/user_loginpage.dart';
import 'Miniproject/Userpage/user_mechaniclist.dart';
import 'Miniproject/Mechanicpage/mech_profilee.dart';
import 'Miniproject/Mechanicpage/mech_login.dart';
import 'Miniproject/Mechanicpage/mech_navigation.dart';
import 'Miniproject/Mechanicpage/mech_notificatn.dart';
import 'Miniproject/Mechanicpage/mech_editprofile.dart';
import 'Miniproject/Mechanicpage/mech_rating.dart';
import 'Miniproject/Mechanicpage/mech_servicehome.dart';
import 'Miniproject/Mechanicpage/mech_req2.dart';
import 'Miniproject/Mechanicpage/mech_service.dart';
import 'Miniproject/Mechanicpage/mech_serviceaccepted.dart';
import 'Miniproject/Mechanicpage/mech_signup.dart';
import 'Miniproject/Mechanicpage/mech_splash.dart';
import 'Miniproject/Mechanicpage/mechreq1.dart';
import 'Miniproject/Mechanicpage/usermechadmin.dart';
import 'firebase_options.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) =>
        MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Home(),
    ));
  }
}