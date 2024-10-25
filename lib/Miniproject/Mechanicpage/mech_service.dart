import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MechService extends StatefulWidget {
  const MechService({super.key});

  @override
  State<MechService> createState() => _MechServiceState();
}

class _MechServiceState extends State<MechService> {
  void initState() {
    super.initState();
    Get_data_sp();
  }

  var mechid;
  Future<void> Get_data_sp() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    setState(() {
      mechid = data.getString("id");
      print("Get Successfully!");
      print("mechid");
    });
  }

  Future<void> Delete_service(String id) async {
    await FirebaseFirestore.instance
        .collection("mech_service")
        .doc(id)
        .delete();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Service',
            style: TextStyle(),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade50,
          leading: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("mech_service")
              .where("Mechid", isEqualTo: mechid)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            final service = snapshot.data?.docs ?? [];
            return ListView.builder(
              itemCount: service.length,
              itemBuilder: (context, index) {
                final doc= service[index];
                final services = doc.data() as Map<String, dynamic>;
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
                              Text('${services["service"]??""}'),
                              IconButton(
                                  onPressed: () {},
                                  icon: IconButton(
                                      onPressed: () {
                                        Delete_service(doc.id);
                                      },
                                      icon: Icon(CupertinoIcons.delete_solid)))
                            ],
                          ),

                          Divider(
                            color: Colors.black,
                            indent: 20.w,
                            endIndent: 20.w,
                          ),

                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Add_service();
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

class Add_service extends StatefulWidget {
  const Add_service({super.key});

  @override
  State<Add_service> createState() => _Add_serviceState();
}

class _Add_serviceState extends State<Add_service> {
  @override
  void initState(){
    super.initState();
    Get_data_sp();
  }
  final _formKey = GlobalKey<FormState>();
  var service_ctrl = TextEditingController();

  var mechid;
  Future<void>Get_data_sp()async{
    SharedPreferences data=await SharedPreferences.getInstance();
    setState(() {
      mechid= data.getString("id");

      print("Get Successfully/////////////");
      print(mechid);
    });
  }
  Future<void> AddService() async {
    if (_formKey.currentState!.validate()) {
      FirebaseFirestore.instance.collection("MechAddservice").add({
        "Service": service_ctrl.text,
        "Mech_id":mechid
      });
      service_ctrl.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue.shade100,
      title: Text(
        'Add service',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Form(
        key: _formKey, // Associate the form with the key
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: service_ctrl,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10)),
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a service name';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: GestureDetector(
              onTap: AddService, // Call addservice when the button is tapped
              child: Container(
                width: 250.w,
                height: 55.h,
                decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
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