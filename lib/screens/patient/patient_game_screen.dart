// ignore_for_file: avoid_print
import 'package:schizophrend/screens/patient/components/patient_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:schizophrend/main.dart';

class PatientGame extends StatelessWidget {
  const PatientGame({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SchizoPhren',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PatientGameScreen(),
    );
  }
}

class PatientGameScreen extends StatefulWidget {
  const PatientGameScreen({Key? key, this.title = 'Patient dashboard'})
      : super(key: key);

  final String title;

  @override
  State<PatientGameScreen> createState() => _PatientGameScreenState();
}

class _PatientGameScreenState extends State<PatientGameScreen> {
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
                    label: const Text('Download Game!',
                        style: TextStyle(color: Colors.white)),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.fromLTRB(30, 50, 190, 50))),
              ),
            ],
          ),
        ]));
  }
}
