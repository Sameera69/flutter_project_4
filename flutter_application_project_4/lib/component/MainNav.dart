import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/HomePage.dart';
import 'package:flutter_application_project_4/models/Project.dart';
import 'package:flutter_application_project_4/models/appData.dart';

class NavMain extends StatefulWidget {
  NavMain({Key? key, required this.p}) : super(key: key);
  Project p;
  @override
  State<NavMain> createState() => _NavMain();
}

class _NavMain extends State<NavMain> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/projectIcon1.png',
                  width: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.p.name,
                  style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color.fromARGB(255, 235, 235, 235),
                  size: 16,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.star_border_rounded,
                  color: Color.fromARGB(255, 235, 235, 235),
                  size: 16,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.circle_outlined,
                        size: 12,
                        color: Color.fromARGB(255, 235, 235, 235),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Set status',
                        style: TextStyle(
                          color: Color.fromARGB(255, 235, 235, 235),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onHover: (value) {
                        AppData.isListHoverL[0] = value;
                        if (AppData.isListHoverL[0]) {
                          AppData.listHoverTxtL[0] = Colors.white;
                          AppData.listHoverDivL[0] = Colors.white;
                          AppData.textStyleL[0] =
                              TextStyle(color: AppData.listHoverTxtL[0], fontWeight: FontWeight.bold);
                        } else {
                          AppData.listHoverTxtL[0] = const Color.fromARGB(255, 202, 202, 202);
                          AppData.listHoverDivL[0] = Colors.transparent;
                          AppData.textStyleL[0] = TextStyle(
                            color: AppData.listHoverTxtL[0],
                          );
                        }
                        setState(() {});
                      },
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
                        width: 90,
                        child: Column(
                          children: [
                            Text(
                              'Overview',
                              style: AppData.textStyleL[0],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onHover: (value) {
                        AppData.isListHoverL[1] = value;
                        if (AppData.isListHoverL[1]) {
                          AppData.listHoverTxtL[1] = Colors.white;
                          AppData.listHoverDivL[1] = Colors.white;
                          AppData.textStyleL[1] =
                              TextStyle(color: AppData.listHoverTxtL[1], fontWeight: FontWeight.bold);
                        } else {
                          AppData.listHoverTxtL[1] = const Color.fromARGB(255, 202, 202, 202);
                          AppData.listHoverDivL[1] = Colors.transparent;
                          AppData.textStyleL[1] = TextStyle(
                            color: AppData.listHoverTxtL[1],
                          );
                        }

                        setState(() {});
                      },
                      onTap: () {
                        AppData.listHoverTxtL[1] = Colors.white;
                        AppData.listHoverDivL[1] = Colors.white;
                        AppData.textStyleL[1] = TextStyle(color: AppData.listHoverTxtL[1], fontWeight: FontWeight.bold);
                        AppData.pageViewChoice = 0;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(
                                      p: widget.p,
                                    )));
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        width: 50,
                        child: Column(
                          children: [
                            Text(
                              'List',
                              style: AppData.textStyleL[1],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onHover: (value) {
                        AppData.isListHoverL[2] = value;
                        if (AppData.isListHoverL[2]) {
                          AppData.listHoverTxtL[2] = Colors.white;
                          AppData.listHoverDivL[2] = Colors.white;
                          AppData.textStyleL[2] =
                              TextStyle(color: AppData.listHoverTxtL[2], fontWeight: FontWeight.bold);
                        } else {
                          AppData.listHoverTxtL[2] = const Color.fromARGB(255, 202, 202, 202);
                          AppData.listHoverDivL[2] = Colors.transparent;
                          AppData.textStyleL[2] = TextStyle(
                            color: AppData.listHoverTxtL[2],
                          );
                        }

                        setState(() {});
                      },
                      onTap: () {
                        AppData.listHoverTxtL[2] = Colors.white;
                        AppData.listHoverDivL[2] = Colors.white;
                        AppData.textStyleL[2] = TextStyle(color: AppData.listHoverTxtL[2], fontWeight: FontWeight.bold);

                        AppData.pageViewChoice = 1;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(
                                      p: widget.p,
                                    )));
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        width: 60,
                        child: Column(
                          children: [
                            Text(
                              'Board',
                              style: AppData.textStyleL[2],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onHover: (value) {
                        AppData.isListHoverL[3] = value;
                        if (AppData.isListHoverL[3]) {
                          AppData.listHoverTxtL[3] = Colors.white;
                          AppData.listHoverDivL[3] = Colors.white;
                          AppData.textStyleL[3] =
                              TextStyle(color: AppData.listHoverTxtL[3], fontWeight: FontWeight.bold);
                        } else {
                          AppData.listHoverTxtL[3] = const Color.fromARGB(255, 202, 202, 202);
                          AppData.listHoverDivL[3] = Colors.transparent;
                          AppData.textStyleL[3] = TextStyle(
                            color: AppData.listHoverTxtL[3],
                          );
                        }
                        setState(() {});
                      },
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        width: 90,
                        child: Column(
                          children: [
                            Text(
                              'Timeline',
                              style: AppData.textStyleL[3],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onHover: (value) {
                        AppData.isListHoverL[4] = value;
                        if (AppData.isListHoverL[4]) {
                          AppData.listHoverTxtL[4] = Colors.white;
                          AppData.listHoverDivL[4] = Colors.white;
                          AppData.textStyleL[4] =
                              TextStyle(color: AppData.listHoverTxtL[4], fontWeight: FontWeight.bold);
                        } else {
                          AppData.listHoverTxtL[4] = const Color.fromARGB(255, 202, 202, 202);
                          AppData.listHoverDivL[4] = Colors.transparent;
                          AppData.textStyleL[4] = TextStyle(
                            color: AppData.listHoverTxtL[4],
                          );
                        }
                        setState(() {});
                      },
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        width: 90,
                        child: Column(
                          children: [
                            Text(
                              'Calender',
                              style: AppData.textStyleL[4],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onHover: (value) {
                        AppData.isListHoverL[5] = value;
                        if (AppData.isListHoverL[5]) {
                          AppData.listHoverTxtL[5] = Colors.white;
                          AppData.listHoverDivL[5] = Colors.white;
                          AppData.textStyleL[5] =
                              TextStyle(color: AppData.listHoverTxtL[5], fontWeight: FontWeight.bold);
                        } else {
                          AppData.listHoverTxtL[5] = const Color.fromARGB(255, 202, 202, 202);
                          AppData.listHoverDivL[5] = Colors.transparent;
                          AppData.textStyleL[5] = TextStyle(
                            color: AppData.listHoverTxtL[5],
                          );
                        }
                        setState(() {});
                      },
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        width: 90,
                        child: Column(
                          children: [
                            Text(
                              'Workflow',
                              style: AppData.textStyleL[5],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onHover: (value) {
                        AppData.isListHoverL[6] = value;
                        if (AppData.isListHoverL[6]) {
                          AppData.listHoverTxtL[6] = Colors.white;
                          AppData.listHoverDivL[6] = Colors.white;
                          AppData.textStyleL[6] =
                              TextStyle(color: AppData.listHoverTxtL[6], fontWeight: FontWeight.bold);
                        } else {
                          AppData.listHoverTxtL[6] = const Color.fromARGB(255, 202, 202, 202);
                          AppData.listHoverDivL[6] = Colors.transparent;
                          AppData.textStyleL[6] = TextStyle(
                            color: AppData.listHoverTxtL[6],
                          );
                        }
                        setState(() {});
                      },
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        width: 100,
                        child: Column(
                          children: [
                            Text(
                              'Dashboard',
                              style: AppData.textStyleL[6],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onHover: (value) {
                        AppData.isListHoverL[7] = value;
                        if (AppData.isListHoverL[7]) {
                          AppData.listHoverTxtL[7] = Colors.white;
                          AppData.listHoverDivL[7] = Colors.white;
                          AppData.textStyleL[7] =
                              TextStyle(color: AppData.listHoverTxtL[7], fontWeight: FontWeight.bold);
                        } else {
                          AppData.listHoverTxtL[7] = const Color.fromARGB(255, 202, 202, 202);
                          AppData.listHoverDivL[7] = Colors.transparent;
                          AppData.textStyleL[7] = TextStyle(
                            color: AppData.listHoverTxtL[7],
                          );
                        }
                        setState(() {});
                      },
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        width: 100,
                        child: Column(
                          children: [
                            Text(
                              'Messages',
                              style: AppData.textStyleL[7],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onHover: (value) {
                        AppData.isListHoverL[8] = value;
                        if (AppData.isListHoverL[8]) {
                          AppData.listHoverTxtL[8] = Colors.white;
                          AppData.listHoverDivL[8] = Colors.white;
                          AppData.textStyleL[8] =
                              TextStyle(color: AppData.listHoverTxtL[8], fontWeight: FontWeight.bold);
                        } else {
                          AppData.listHoverTxtL[8] = const Color.fromARGB(255, 202, 202, 202);
                          AppData.listHoverDivL[8] = Colors.transparent;
                          AppData.textStyleL[8] = TextStyle(
                            color: AppData.listHoverTxtL[8],
                          );
                        }
                        setState(() {});
                      },
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        width: 50,
                        child: Column(
                          children: [
                            Text(
                              'Files',
                              style: AppData.textStyleL[8],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    const Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 90,
                      child: Divider(
                        color: AppData.listHoverDivL[0],
                        thickness: 2,
                      ),
                    ),
                    Positioned(
                      left: 90,
                      child: SizedBox(
                        width: 50,
                        child: Divider(
                          color: AppData.listHoverDivL[1],
                          thickness: 2,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      child: SizedBox(
                        width: 60,
                        child: Divider(
                          color: AppData.listHoverDivL[2],
                          thickness: 2,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 200,
                      child: SizedBox(
                        width: 90,
                        child: Divider(
                          color: AppData.listHoverDivL[3],
                          thickness: 2,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 290,
                      child: SizedBox(
                        width: 90,
                        child: Divider(
                          color: AppData.listHoverDivL[4],
                          thickness: 2,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 380,
                      child: SizedBox(
                        width: 90,
                        child: Divider(
                          color: AppData.listHoverDivL[5],
                          thickness: 2,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 470,
                      child: SizedBox(
                        width: 100,
                        child: Divider(
                          color: AppData.listHoverDivL[6],
                          thickness: 2,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 570,
                      child: SizedBox(
                        width: 100,
                        child: Divider(
                          color: AppData.listHoverDivL[7],
                          thickness: 2,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 670,
                      child: SizedBox(
                        width: 50,
                        child: Divider(
                          color: AppData.listHoverDivL[8],
                          thickness: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
