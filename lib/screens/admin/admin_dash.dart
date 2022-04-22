// ignore_for_file: sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:schizophrend/main.dart';
import 'package:schizophrend/screens/admin/components/admin_nav_bar.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SchizoPhren',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AdminDash(title: 'Admin Dashboard'),
    );
  }
}

class AdminDash extends StatefulWidget {
  const AdminDash({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AdminDash> createState() => _AdminDashState();
}

class _AdminDashState extends State<AdminDash> {
  bool loggedIn = true;

  void logOut() {
    setState(() {
      loggedIn = false;
      print('Logged Out!');
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
        drawer: const AdminNavBar(title: 'Admin Dashboard'),
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
                  onTap: logOut,
                  child: const Icon(Icons.logout),
                )),
          ],
        ),
        body: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                width: 160,
                color: Colors.amber,
                child: const ListTile(
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                    title: Text('2 total Patients',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    subtitle: Text('Approval Required: 1',
                        style: TextStyle(color: Colors.white))),
              ),
              Container(
                color: Colors.redAccent,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: 160,
                child: const ListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                  title: Text('3 total Doctors',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  subtitle: Text('Approval Required: 1',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Text('Recent Patients: '),
                )
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Table(
                border: TableBorder.all(),
                columnWidths: const <int, TableColumnWidth>{
                  0: FixedColumnWidth(60),
                  1: FixedColumnWidth(43),
                  2: FixedColumnWidth(90),
                  3: FixedColumnWidth(85),
                  4: FixedColumnWidth(75),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Name'),
                        color: const Color.fromARGB(255, 202, 220, 230),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Age'),
                        color: const Color.fromARGB(255, 202, 220, 230),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Number'),
                        color: const Color.fromARGB(255, 202, 220, 230),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Admit Date'),
                        color: const Color.fromARGB(255, 202, 220, 230),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Status'),
                        color: const Color.fromARGB(255, 202, 220, 230),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Alina'),
                        height: 32,
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('39'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('9888888889'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('09-04-2022 16:45:32'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Admitted',
                            style: TextStyle(color: Colors.green)),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Sarada'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('23'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('9999999999'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('09-04-2022 16:45:32'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Admitted',
                            style: TextStyle(color: Colors.green)),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Neerav'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('53'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('6666666666'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('09-04-2022 08:05:49'),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: const Text('Pending',
                            style: TextStyle(color: Colors.red)),
                      ),
                    ),
                  ]),
                ],
              )
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Text('Recent Doctors: '),
                )
              ]),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Table(
                    border: TableBorder.all(),
                    columnWidths: const <int, TableColumnWidth>{
                      0: FixedColumnWidth(60),
                      1: FixedColumnWidth(43),
                      2: FixedColumnWidth(90),
                      3: FixedColumnWidth(85),
                      4: FixedColumnWidth(80),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(children: [
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Name'),
                            color: const Color.fromARGB(255, 202, 220, 230),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Age'),
                            color: const Color.fromARGB(255, 202, 220, 230),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Number'),
                            color: const Color.fromARGB(255, 202, 220, 230),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Department'),
                            color: const Color.fromARGB(255, 202, 220, 230),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Status'),
                            color: const Color.fromARGB(255, 202, 220, 230),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Mal'),
                            height: 32,
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('37'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('7777777777'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Psychotherapist'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Permanent',
                                style: TextStyle(color: Colors.green)),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Yrene'),
                            height: 32,
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('29'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('8989898989'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Pharmocologist'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Permanent',
                                style: TextStyle(color: Colors.green)),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Mal'),
                            height: 32,
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('37'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('7777777777'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Psychotherapist'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Permanent',
                                style: TextStyle(color: Colors.green)),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Alexander'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('40'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('8888888888'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Psychotherapist'),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text('Pending',
                                style: TextStyle(color: Colors.red)),
                          ),
                        ),
                      ]),
                    ],
                  )
                ],
              ))
        ]));
  }
}
