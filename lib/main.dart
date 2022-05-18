import 'package:schizophrend/screens/auth/sign_in_screen.dart';
import 'package:schizophrend/screens/doctor/doctor_dash.dart';
import 'package:schizophrend/screens/patient/patient_dash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SchizoPhrendWelcome(),
  ));
}

class SchizoPhrendWelcome extends StatelessWidget {
  const SchizoPhrendWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('SchizoPhren'),
          backgroundColor: Colors.lightBlue[800],
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    )),
                child: const Text('ADMIN',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        fontFamily: 'Roboto')),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                )),
            TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueAccent),
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DoctorDash(),
                    )),
                child: const Text('DOCTOR',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        fontFamily: 'Roboto'))),
            TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PatientDash(),
                    )),
                child: const Text('PATIENT',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        fontFamily: 'Roboto')))
          ],
        )));
  }
}
