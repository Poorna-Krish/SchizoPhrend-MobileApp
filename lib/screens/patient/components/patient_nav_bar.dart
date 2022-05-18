// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:schizophrend/screens/patient/patient_dash.dart';
import 'package:schizophrend/screens/patient/patient_game_screen.dart';

class PatientNavBar extends StatefulWidget {
  const PatientNavBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<PatientNavBar> createState() => _PatientNavBarState();
}

class _PatientNavBarState extends State<PatientNavBar> {
  bool loggedIn = true;

  void logOut() {
    setState(() {
      loggedIn = false;
      // print('Logged Out nav!');
    });
  }

  @override
  Widget build(BuildContext context) {
    const String patientImageUrl = 'assets/images/Patient_profile.png';
    Widget buildAdminNavHeader({
      required String image,
    }) =>
        Container(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 60, backgroundImage: AssetImage(image)),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    child: const Text('Patient',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: 'Times'))),
                const Text('Sarada, 33',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w200)),
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
          print('Patient dash');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PatientDashboard(),
            ),
          );
          break;
        case 1:
          print('Patient dash');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PatientGameScreen(),
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
              buildAdminNavHeader(image: patientImageUrl),
              const Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 48),
              buildMenuItem(
                text: 'Dashboard',
                onClicked: () => selectedItem(context, 0),
                icon: Icons.dashboard,
              ),
              const SizedBox(height: 48),
              buildMenuItem(
                text: 'Game Link',
                onClicked: () => selectedItem(context, 1),
                icon: Icons.games,
              ),
            ])));
  }
}
