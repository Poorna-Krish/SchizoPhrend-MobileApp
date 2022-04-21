import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SchizoPhren',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DoctorDash(title: 'Doctor dashboard'),
    );
  }
}

class DoctorDash extends StatefulWidget {
  const DoctorDash({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildMenuItem({required String text, required IconData icon}) {
      const color = Colors.white;
      return ListTile(
          leading: Icon(icon, color: color),
          title: Text(text, style: const TextStyle(color: color)));
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _logInOrOut method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        drawer: Drawer(
            child: Container(
                color: Colors.blue,
                child: ListView(children: <Widget>[
                  const SizedBox(height: 48),
                  buildMenuItem(
                    text: 'Dashboard',
                    icon: Icons.dashboard,
                  ),
                  const SizedBox(height: 48),
                  buildMenuItem(
                    text: 'Your Patients',
                    icon: Icons.people,
                  ),
                  // Text('Doctors'),
                  // Text('Patients'),
                ]))),
        appBar: AppBar(
          // Here we take the value from the DoctorDash object that was created by
          // the App.build method, and use it to set our appbar title.
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
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
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
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: const [
          //       Text('You have no patients'),
          //     ])
          // floatingActionButton: FloatingActionButton(
          //   onPressed: _logOut,
          //   tooltip: 'Increment',
          //   child: const Icon(Icons.add),
          // ), // This trailing comma makes auto-formatting nicer for build methods.
        ]));
  }
}
