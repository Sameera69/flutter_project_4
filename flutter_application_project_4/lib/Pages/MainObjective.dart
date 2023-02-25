import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/FirstProject.dart';

class MainObjectivePage extends StatefulWidget {
  const MainObjectivePage({
    super.key,
  });

  @override
  State<MainObjectivePage> createState() => _MainObjectivePage();
}

class _MainObjectivePage extends State<MainObjectivePage> {
  bool submit = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
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
          padding: const EdgeInsets.fromLTRB(60, 36, 36, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                width: 400,
                child: Text(
                  'What is your main objective in Asana?',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your choice here won\'t limit what you can do in Asana.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  SizedBox(
                    width: 420,
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            width: 400,
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
                                border: Border.all(width: 2, color: colorContainerBorder),
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
                                      'Project and process management',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Plan project, coordinate task, and hit deadlines',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 208, 244, 209),
                          border: Border.all(color: const Color.fromARGB(255, 208, 244, 209)),
                          borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child: const Text(
                        'Recommended for you',
                        style: TextStyle(color: Color.fromARGB(255, 46, 99, 47)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: 400,
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
                      Icons.check_circle_outline_rounded,
                      color: Colors.yellow,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Personal and process management',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Organize to-dos and plan out may work day',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: 400,
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
                      Icons.bar_chart_rounded,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Portfolio and workload management',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 300,
                          child: Text(
                            'Monitor status and team-member workload across multiple projects',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                    ),
                    onPressed: (() {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstProjectPage()));
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
                  const SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'I\'m not sure yet',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  submitData() {
    setState(() {});
    // Do something here
  }
}

class WorkCard extends StatefulWidget {
  WorkCard({Key? key, required this.WorkName, required this.colorContainer, required this.colorText}) : super(key: key);
  final String WorkName;
  Color colorContainer;
  Color colorText;

  @override
  State<WorkCard> createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            widget.colorContainer = widget.colorContainer == Colors.white ? Colors.indigo : Colors.white;
            widget.colorText = widget.colorText == Colors.black ? Colors.white : Colors.black;
            setState(() {});
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: widget.colorContainer,
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Text(
              widget.WorkName,
              style: TextStyle(color: widget.colorText),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
