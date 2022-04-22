// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:schizophrend/screens/admin/admin_doctor_records.dart';
import 'package:schizophrend/screens/admin/admin_doctor_approve.dart';
import 'package:schizophrend/screens/admin/components/admin_nav_bar.dart';

class AdminDoctorView extends StatefulWidget {
  const AdminDoctorView({Key? key, this.title = 'Admin dashboard'})
      : super(key: key);

  final String title;

  @override
  State<AdminDoctorView> createState() => _AdminDoctorViewState();
}

class _AdminDoctorViewState extends State<AdminDoctorView> {
  bool loggedIn = true;

  void _logOut() {
    setState(() {
      loggedIn = !false;
      print('Logged out!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const AdminNavBar(title: 'Admin Dashboard'),
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: _logOut,
                  child: const Icon(Icons.logout),
                )),
          ],
        ),
        body: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                width: 300,
                height: 100,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(20),
                child: TextButton(
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AdminDoctorRecords(),
                          ),
                        ),
                    child: const Text('Doctor Records',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 40),
                width: 300,
                height: 100,
                color: Colors.amber,
                // padding: const EdgeInsets.all(20),
                child: TextButton(
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AdminDoctorApprove(),
                          ),
                        ),
                    child: const Text('Approve Doctor',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 40),
                width: 300,
                height: 100,
                color: Colors.greenAccent,
                padding: const EdgeInsets.all(20),
                child: const Text('Doctor Specialisation',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ]));
  }
}
