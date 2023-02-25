import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/HomePage.dart';
import 'package:flutter_application_project_4/Pages/Layout.dart';
import 'package:flutter_application_project_4/models/Project.dart';
import 'package:flutter_application_project_4/models/Task.dart';
import 'package:flutter_application_project_4/models/appData.dart';
import 'package:intl/intl.dart';

class TasksFirstProjectPage extends StatefulWidget {
  TasksFirstProjectPage({
    super.key,
    required this.p,
  });
  Project p;
  @override
  State<TasksFirstProjectPage> createState() => _TasksFirstProjectPage();
}

class _TasksFirstProjectPage extends State<TasksFirstProjectPage> {
  bool submit = false;
  var task1Controller = TextEditingController();
  var task2Controller = TextEditingController();
  var task3Controller = TextEditingController();
  List<Task> tasks = [];
  List<String> taskst = [];
  @override
  void initState() {
    task1Controller.text = 'Draft project brief';
    task2Controller.text = 'Set project objectives';
    task3Controller.text = 'Finalis budget with stakeholders';
    super.initState();
  }

  @override
  void dispose() {
    task1Controller.dispose();
    task2Controller.dispose();
    task3Controller.dispose();
    super.dispose();
  }

  Color colorText = Colors.black;
  @override
  Widget build(BuildContext context) {
    Color colorContainerBorder = Colors.indigo;
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
                  SizedBox(
                    width: 400,
                    child: Text(
                      'What are the tasks that you have to do for ${widget.p.name}?',
                      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.check_circle_outline_rounded),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {});
                          },
                          controller: task1Controller,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
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
                      const Icon(Icons.check_circle_outline_rounded),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {});
                          },
                          controller: task2Controller,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
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
                      const Icon(Icons.check_circle_outline_rounded),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {});
                          },
                          controller: task3Controller,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                    ),
                    onPressed: (() {
                      setState(() {
                        List<String> datet = ['today - 23', '24 - 26', '27 - 29'];
                        List<String> piriorityt = ['High', ' Medium', 'Low'];
                        taskst = [task1Controller.text, task2Controller.text, task3Controller.text];
                        AppData.tasksList.add(Task(
                            title: task1Controller.text,
                            assignee: widget.p.ownerEmail,
                            dueDate: DateFormat.MMMd().format(DateTime.now().add(const Duration(days: 2))).toString(),
                            priority: 'High',
                            controller: TextEditingController(text: task1Controller.text),
                            completeIcon: Icons.check_circle_outline,
                            isCompleted: false,
                            sectionName: 'To do',
                            projectName: widget.p.name,
                            priorityColor: Colors.red));
                        AppData.tasksList.add(Task(
                            title: task2Controller.text,
                            assignee: widget.p.ownerEmail,
                            dueDate: DateFormat.MMMd().format(DateTime.now().add(const Duration(days: 4))).toString(),
                            priority: 'Medium',
                            controller: TextEditingController(text: task2Controller.text),
                            completeIcon: Icons.check_circle_outline,
                            isCompleted: false,
                            sectionName: 'To do',
                            projectName: widget.p.name,
                            priorityColor: Colors.orange));
                        AppData.tasksList.add(Task(
                            title: task3Controller.text,
                            assignee: widget.p.ownerEmail,
                            dueDate: DateFormat.MMMd().format(DateTime.now().add(const Duration(days: 6))).toString(),
                            priority: 'Low',
                            controller: TextEditingController(text: task3Controller.text),
                            completeIcon: Icons.check_circle_outline,
                            isCompleted: false,
                            sectionName: 'To do',
                            projectName: widget.p.name,
                            priorityColor: Colors.yellow));
                        AppData.task1 = task1Controller.text;
                        AppData.task2 = task2Controller.text;
                        AppData.task3 = task3Controller.text;
                        if (AppData.projectList.length == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LayoutPage(
                                        p: widget.p,
                                      )));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        p: widget.p,
                                      )));
                        }
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
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/templet1.png',
                        width: 500,
                      ),
                      Positioned(
                        top: 30,
                        left: 70,
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
                        top: 35,
                        left: 70,
                        child: Text(
                          AppData.firstProjectName,
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        top: 125,
                        left: 54,
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
                        top: 135,
                        left: 54,
                        child: Container(
                          color: Colors.white,
                          width: 200,
                          height: 20,
                          child: Text(
                            task1Controller.text,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 125,
                        left: 305,
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
                        top: 125,
                        left: 305,
                        child: Container(
                            color: Colors.white,
                            width: 100,
                            height: 30,
                            child: Image.asset(
                              'assets/images/ass1.png',
                              width: 40,
                            )),
                      ),
                      Positioned(
                        top: 163,
                        left: 54,
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
                        top: 170,
                        left: 54,
                        child: Container(
                          color: Colors.white,
                          width: 200,
                          height: 20,
                          child: Text(
                            task2Controller.text,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 163,
                        left: 305,
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
                        top: 163,
                        left: 305,
                        child: Container(
                            color: Colors.white,
                            width: 100,
                            height: 30,
                            child: Image.asset(
                              'assets/images/ass2.png',
                              width: 40,
                            )),
                      ),
                      Positioned(
                        top: 200,
                        left: 54,
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
                        top: 208,
                        left: 54,
                        child: Container(
                          color: Colors.white,
                          width: 200,
                          height: 20,
                          child: Text(
                            task3Controller.text,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 200,
                        left: 305,
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
                        top: 200,
                        left: 305,
                        child: Container(
                            color: Colors.white,
                            width: 100,
                            height: 30,
                            child: Image.asset(
                              'assets/images/ass3.png',
                              width: 40,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
