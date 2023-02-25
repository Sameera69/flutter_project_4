import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/Teammates.dart';
import 'package:flutter_application_project_4/models/Project.dart';
import 'package:flutter_application_project_4/models/appData.dart';

class LayoutPage extends StatefulWidget {
  LayoutPage({
    super.key,
    required this.p,
  });
  Project p;
  @override
  State<LayoutPage> createState() => _LayoutPage();
}

class _LayoutPage extends State<LayoutPage> {
  bool submit = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Color colorText = Colors.black;
  Color colorContainerBorder1 = Colors.indigo;
  Color colorContainerBorder2 = Colors.grey.withOpacity(0.5);
  int containerClick = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/logo1.png'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(60, 36, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    width: 400,
                    child: Text(
                      'What layout works best for this project? You can change this later.',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (containerClick == 2) {
                            colorContainerBorder1 = Colors.indigo;
                            colorContainerBorder2 = Colors.grey.withOpacity(0.5);
                            containerClick = 1;
                          }
                          AppData.pageViewChoice = 0;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          width: 200,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              border: Border.all(width: 2, color: colorContainerBorder1),
                              borderRadius: const BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.list_alt_rounded,
                                color: Colors.red,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'List',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          if (containerClick == 1) {
                            colorContainerBorder2 = Colors.indigo;
                            colorContainerBorder1 = Colors.grey.withOpacity(0.5);
                            containerClick = 2;
                          }
                          AppData.pageViewChoice = 1;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          width: 200,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              border: Border.all(color: colorContainerBorder2, width: 2),
                              borderRadius: const BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.space_dashboard_rounded,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Board',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: 200,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.view_timeline_rounded,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Timeline',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: 200,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Calender',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                    ),
                    onPressed: (() {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TeammatePage(
                                      containerClick: containerClick,
                                      p: widget.p,
                                    )));
                      });
                    }),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              if (containerClick == 1) const LListView(),
              if (containerClick == 2) const BoardView(),
            ],
          ),
        ),
      ),
    );
  }
}

class BoardView extends StatelessWidget {
  const BoardView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Stack(
          children: [
            Image.asset(
              'assets/images/templet3.png',
              width: 600,
            ),
            Positioned(
              top: 30,
              left: 60,
              child: Container(
                color: Colors.white,
                width: 400,
                height: 20,
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 63,
              child: Container(
                color: Colors.white,
                width: 400,
                height: 20,
                child: Text(
                  AppData.firstProjectName,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 50,
              child: Container(
                color: Colors.white,
                width: 100,
                height: 20,
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 115,
              left: 50,
              child: Container(
                color: Colors.white,
                width: 100,
                height: 20,
                child: Text(
                  AppData.task1,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ),
            Positioned(
              top: 195,
              left: 50,
              child: Container(
                color: Colors.white,
                width: 100,
                height: 20,
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 198,
              left: 50,
              child: Container(
                color: Colors.white,
                width: 130,
                height: 20,
                child: Text(
                  AppData.task2,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ),
            Positioned(
              top: 275,
              left: 50,
              child: Container(
                color: Colors.white,
                width: 100,
                height: 30,
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 278,
              left: 50,
              child: Container(
                color: Colors.white,
                width: 100,
                height: 30,
                child: Text(
                  AppData.task3,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LListView extends StatelessWidget {
  const LListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Stack(
          children: [
            Image.asset(
              'assets/images/templet2.png',
              width: 600,
            ),
            Positioned(
              top: 25,
              left: 60,
              child: Container(
                color: Colors.white,
                width: 500,
                height: 30,
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 31,
              left: 63,
              child: Container(
                color: Colors.transparent,
                width: 500,
                height: 30,
                child: Text(
                  AppData.firstProjectName,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 137,
              left: 45,
              child: Container(
                color: Colors.white,
                width: 200,
                height: 25,
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 142,
              left: 45,
              child: Container(
                color: Colors.transparent,
                width: 200,
                height: 25,
                child: Text(
                  AppData.task1,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ),
            Positioned(
              top: 168,
              left: 45,
              child: Container(
                color: Colors.white,
                width: 200,
                height: 25,
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 173,
              left: 45,
              child: Container(
                color: Colors.transparent,
                width: 200,
                height: 25,
                child: Text(
                  AppData.task2,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ),
            Positioned(
              top: 198,
              left: 45,
              child: Container(
                color: Colors.white,
                width: 200,
                height: 25,
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top: 203,
              left: 45,
              child: Container(
                color: Colors.transparent,
                width: 200,
                height: 25,
                child: Text(
                  AppData.task3,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
