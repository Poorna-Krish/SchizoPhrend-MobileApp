// ignore_for_file: avoid_print
import 'package:schizophrend/screens/doctor/components/doctor_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:schizophrend/main.dart';

class DoctorDashboard extends StatelessWidget {
  const DoctorDashboard({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SchizoPhren',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DoctorDash(title: 'Doctor Dashboard'),
    );
  }
}

class DoctorDash extends StatefulWidget {
  const DoctorDash({Key? key, this.title = 'Doctor dashboard'})
      : super(key: key);

  final String title;

  @override
  State<DoctorDash> createState() => _DoctorDashState();
}

class _DoctorDashState extends State<DoctorDash> {
  bool loggedIn = true;

  void _logOut() {
    setState(() {
      loggedIn = !false;
      print('Logged out!');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SchizoPhrendWelcome(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DoctorNavBar(title: 'Doctor Dashboard'),
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
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextButton.icon(
                    icon: const Icon(Icons.people, color: Colors.white),
                    onPressed: null,
                    label: const Text('2 Patients Under You',
                        style: TextStyle(color: Colors.white)),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        padding: const EdgeInsets.fromLTRB(30, 20, 190, 20))),
              )
            ],
          ),
        ]));
  }
}
