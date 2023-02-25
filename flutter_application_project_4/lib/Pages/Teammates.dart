import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/HomePage.dart';
import 'package:flutter_application_project_4/Pages/Layout.dart';
import 'package:flutter_application_project_4/models/Project.dart';
import 'package:flutter_application_project_4/models/appData.dart';

class TeammatePage extends StatefulWidget {
  TeammatePage({super.key, required this.containerClick, required this.p});
  int containerClick;
  Project p;
  @override
  State<TeammatePage> createState() => _TeammatePage();
}

class _TeammatePage extends State<TeammatePage> {
  bool submit = false;
  final List<String> controllerString = [];
  final email1Controller = TextEditingController();
  final email2Controller = TextEditingController();
  final email3Controller = TextEditingController();
  final email4Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    email1Controller.dispose();
    email2Controller.dispose();
    email3Controller.dispose();
    email4Controller.dispose();

    super.dispose();
  }

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
                      'Congratulation, you\'ve created your first project in Asana!',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Who\'s working on this project with you?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Email address',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 500,
                    child: TextField(
                      controller: email1Controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Teammate\'s email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 500,
                    child: TextField(
                      controller: email2Controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Teammate\'s email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 500,
                    child: TextField(
                      controller: email3Controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Teammate\'s email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 500,
                    child: TextField(
                      controller: email4Controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Teammate\'s email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                    ),
                    onPressed: (() {
                      setState(() {
                        controllerString.add(widget.p.ownerEmail);
                        controllerString.add(email1Controller.text);
                        controllerString.add(email2Controller.text);
                        controllerString.add(email3Controller.text);
                        controllerString.add(email4Controller.text);
                        for (var c in controllerString) {
                          if (c != '') {
                            AppData.teammates.add(c);
                          }
                        }

                        widget.p.teammates = AppData.teammates;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(
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
              if (widget.containerClick == 1) const LListView(),
              if (widget.containerClick == 2) const BoardView(),
            ],
          ),
        ),
      ),
    );
  }
}
