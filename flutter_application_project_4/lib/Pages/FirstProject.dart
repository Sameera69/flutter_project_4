import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/TasksFirstProject.dart';
import 'package:flutter_application_project_4/models/Project.dart';
import 'package:flutter_application_project_4/models/appData.dart';

class FirstProjectPage extends StatefulWidget {
  const FirstProjectPage({
    super.key,
  });

  @override
  State<FirstProjectPage> createState() => _FirstProjectPage();
}

class _FirstProjectPage extends State<FirstProjectPage> {
  bool submit = false;
  var projectNameController = TextEditingController();
  @override
  void initState() {
    projectNameController.text = 'XYZ Project launch';
    super.initState();
  }

  @override
  void dispose() {
    projectNameController.dispose();
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
                  if (AppData.projectList.isEmpty)
                    const SizedBox(
                      width: 400,
                      child: Text(
                        'Let\'s set up your first project',
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                  if (AppData.projectList.isNotEmpty)
                    const SizedBox(
                      width: 400,
                      child: Text(
                        'Let\'s set up your project',
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 400,
                    child: Text(
                      'What\'s something you and your team are currently working on?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: projectNameController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
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
                        AppData.firstProjectName = projectNameController.text;
                        Project p = Project(
                            name: projectNameController.text,
                            ownerName: AppData.name,
                            ownerEmail: AppData.email,
                            teammates: AppData.teammates);
                        AppData.projectList.add(p);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TasksFirstProjectPage(p: p)));
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
                          projectNameController.text,
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
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
