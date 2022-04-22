// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class DoctorNavBar extends StatefulWidget {
  const DoctorNavBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<DoctorNavBar> createState() => _DoctorNavBarState();
}

class _DoctorNavBarState extends State<DoctorNavBar> {
  bool loggedIn = true;

  void logOut() {
    setState(() {
      loggedIn = false;
      // print('Logged Out nav!');
    });
  }

  @override
  Widget build(BuildContext context) {
    const String doctorImageUrl = 'assets/images/doctor_profile.jpg';
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
                    child: const Text('Doctor',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: 'Times'))),
                const Text('Yrene, 29',
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
          print('Doctor dash');
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const DoctorDash(),
          //   ),
          // );
          break;
        default:
      }
    }

    return Drawer(
        child: Container(
            color: Colors.blue,
            child: ListView(children: <Widget>[
              buildAdminNavHeader(image: doctorImageUrl),
              const Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 48),
              buildMenuItem(
                text: 'Dashboard',
                icon: Icons.dashboard,
              ),
              const SizedBox(height: 48),
              buildMenuItem(
                text: 'Your Patients',
                onClicked: () => selectedItem(context, 0),
                icon: Icons.people,
              ),
            ])));
  }
}
