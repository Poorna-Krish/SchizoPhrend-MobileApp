// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:schizophrend/screens/admin/admin_dash.dart';
import 'package:schizophrend/screens/admin/admin_doctor_view.dart';
import 'package:schizophrend/screens/admin/admin_patient_view.dart';

class AdminNavBar extends StatefulWidget {
  const AdminNavBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AdminNavBar> createState() => _AdminNavBarState();
}

class _AdminNavBarState extends State<AdminNavBar> {
  bool loggedIn = true;

  void logOut() {
    setState(() {
      loggedIn = false;
      // print('Logged Out nav!');
    });
  }

  @override
  Widget build(BuildContext context) {
    const String adminImageUrl = 'assets/images/adminpropic.png';
    Widget buildAdminNavHeader({
      required String image,
    }) =>
        Container(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 60, child: Image.asset(image)),
                const Text('Admin',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'Times'))
              ],
            ));
    Widget buildMenuItem(
        {required String text,
        required IconData icon,
        VoidCallback? onClicked}) {
      const color = Colors.white;
      return ListTile(
          onTap: onClicked,
          leading: Icon(icon, color: color),
          title: Text(text, style: const TextStyle(color: color)));
    }

    void selectedItem(BuildContext context, int index) {
      switch (index) {
        case 0:
          print('Dashboard');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AdminDash(title: 'Admin Dashboard'),
            ),
          );
          break;
        case 1:
          print('Doctors');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AdminDoctorView(),
            ),
          );
          break;
        case 2:
          print('Patients');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AdminPatientView(),
            ),
          );
          break;
        default:
      }
    }

    return Drawer(
        child: Container(
            color: Colors.blue,
            child: ListView(children: <Widget>[
              buildAdminNavHeader(image: adminImageUrl),
              const Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 48),
              buildMenuItem(
                text: 'Dashboard',
                icon: Icons.dashboard,
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(height: 48),
              buildMenuItem(
                text: 'Doctors',
                onClicked: () => selectedItem(context, 1),
                icon: Icons.people,
              ),
              const SizedBox(height: 48),
              buildMenuItem(
                text: 'Patients',
                icon: Icons.sick,
                onClicked: () => selectedItem(context, 2),
              )
            ])));
  }
}
