import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SchizoPhren',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const AdminDash(title: 'Admin Dashboard'),
    );
  }
}

class AdminDash extends StatefulWidget {
  const AdminDash({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<AdminDash> createState() => _AdminDashState();
}

class _AdminDashState extends State<AdminDash> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
    // by the _incrementCounter method above.
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
                    text: 'Doctors',
                    icon: Icons.people,
                  ),
                  const SizedBox(height: 48),
                  buildMenuItem(
                    text: 'Patients',
                    icon: Icons.sick,
                  )
                  // Text('Doctors'),
                  // Text('Patients'),
                ]))),
        appBar: AppBar(
          title: Text(widget.title),
          // leading: GestureDetector(
          //   onTap: () {},
          //   child: const Icon(
          //     Icons.menu, // add custom icons also
          //   ),
          // ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.logout),
                )),
          ],
        ),
        body: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: TextButton(
                    onPressed: null,
                    child: const Text('2 total Patients',
                        style: TextStyle(color: Colors.white)),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                        padding: const EdgeInsets.all(20))),
              ),
              TextButton(
                onPressed: null,
                child: const Text('3 total Doctors',
                    style: TextStyle(color: Colors.white)),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: const EdgeInsets.all(20)),
              ),
            ],
          ),
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: const [
          //       Text('No recent Doctors or Patients'),
          //     ]),
          ListView(children: [
            Table(
              children: [
                TableRow(children: [
                  Column(
                    children: const [Text('Patient 1')],
                  ),
                  Column(
                    children: const [Text('Patient 2')],
                  ),
                  Column(
                    children: const [Text('Patient 3')],
                  )
                ]),
                TableRow(children: [
                  Column(children: const [Text('Javatpoint')]),
                  Column(children: const [Text('MySQL')]),
                  Column(children: const [Text('5*')]),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Javatpoint')]),
                  Column(children: const [Text('ReactJS')]),
                  Column(children: const [Text('5*')]),
                ]),
              ],
            )
          ]),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: _incrementCounter,
          //   tooltip: 'Increment',
          //   child: const Icon(Icons.add),
          // ), // This trailing comma makes auto-formatting nicer for build methods.
        ]));
  }
}
