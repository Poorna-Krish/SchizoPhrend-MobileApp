// ignore_for_file: avoid_print
import 'package:schizophrend/screens/patient/components/patient_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:schizophrend/main.dart';

class PatientDashboard extends StatelessWidget {
  const PatientDashboard({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SchizoPhren',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PatientDash(title: 'Patient Dashboard'),
    );
  }
}

class PatientDash extends StatefulWidget {
  const PatientDash({Key? key, this.title = 'Patient dashboard'})
      : super(key: key);

  final String title;

  @override
  State<PatientDash> createState() => _PatientDashState();
}

class _PatientDashState extends State<PatientDash> {
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
        drawer: const PatientNavBar(title: 'Patient Dashboard'),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 40, 10, 20),
                child: TextButton.icon(
                    icon: const Icon(Icons.games, color: Colors.white),
                    onPressed: null,
                    label: const Text('Level 2',
                        style: TextStyle(color: Colors.white)),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        padding: const EdgeInsets.fromLTRB(30, 20, 190, 20))),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextButton.icon(
                    icon: const Icon(Icons.date_range, color: Colors.white),
                    onPressed: null,
                    label: const Text('Admit Date: 14th Oct 2021',
                        style: TextStyle(color: Colors.white)),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.fromLTRB(30, 20, 80, 20))),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextButton.icon(
                    icon: const Icon(Icons.people, color: Colors.white),
                    onPressed: null,
                    label: const Text('Doctor: Lea Michele',
                        style: TextStyle(color: Colors.white)),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                        padding: const EdgeInsets.fromLTRB(30, 20, 120, 20))),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextButton.icon(
                    icon: const Icon(Icons.phone, color: Colors.white),
                    onPressed: null,
                    label: const Text('Doctor Phone: 9999999999',
                        style: TextStyle(color: Colors.white)),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.fromLTRB(30, 20, 80, 20))),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextButton.icon(
                    icon:
                        const Icon(Icons.gamepad_outlined, color: Colors.white),
                    onPressed: null,
                    label: const Text('Click to Play Game!',
                        style: TextStyle(color: Colors.white)),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.fromLTRB(30, 20, 130, 20))),
              )
            ],
          ),
        ]));
  }
}
