// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:schizophrend/screens/admin/components/admin_nav_bar.dart';

class AdminDoctorRecords extends StatefulWidget {
  const AdminDoctorRecords({Key? key, this.title = 'Admin dashboard'})
      : super(key: key);

  final String title;

  @override
  State<AdminDoctorRecords> createState() => _AdminDoctorRecordsState();
}

class _AdminDoctorRecordsState extends State<AdminDoctorRecords> {
  bool loggedIn = true;

  void _logOut() {
    setState(() {
      loggedIn = !false;
      print('Logged out!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const AdminNavBar(title: 'Admin Dashboard'),
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
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            child: ListView(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: const Text('Available Doctors\' Records:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  )
                ],
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Table(
                        border: TableBorder.all(color: Colors.white),
                        columnWidths: const <int, TableColumnWidth>{
                          0: FixedColumnWidth(60),
                          1: FixedColumnWidth(43),
                          2: FixedColumnWidth(90),
                          3: FixedColumnWidth(110),
                          4: FixedColumnWidth(70),
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
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
                                child: const Text(' '),
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(Icons.update, color: Colors.green),
                                      Icon(Icons.delete,
                                          color: Colors.redAccent),
                                    ],
                                  )),
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(Icons.update, color: Colors.green),
                                      Icon(Icons.delete,
                                          color: Colors.redAccent),
                                    ],
                                  )),
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(Icons.update, color: Colors.green),
                                      Icon(Icons.delete,
                                          color: Colors.redAccent),
                                    ],
                                  )),
                            ),
                          ]),
                        ],
                      )
                    ],
                  ))
            ])));
  }
}
