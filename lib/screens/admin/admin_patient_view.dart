// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:schizophrend/screens/admin/components/admin_nav_bar.dart';

class AdminPatientView extends StatefulWidget {
  const AdminPatientView({Key? key, this.title = 'Admin dashboard'})
      : super(key: key);

  final String title;

  @override
  State<AdminPatientView> createState() => _AdminPatientViewState();
}

class _AdminPatientViewState extends State<AdminPatientView> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text('Patients'),
            ],
          ),
        ]));
  }
}
