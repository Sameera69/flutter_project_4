import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/FirstProject.dart';
import 'package:flutter_application_project_4/Pages/HomePage.dart';
import 'package:flutter_application_project_4/models/Project.dart';
import 'package:flutter_application_project_4/models/appData.dart';

class NavBar extends StatefulWidget {
  NavBar({
    Key? key,
    required this.p,
  }) : super(key: key);

  Project p;
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 40, 40, 40),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
            child: Column(
              children: [
                Row(
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        customButton: Container(
                          width: 120,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: const Color.fromARGB(255, 189, 189, 189)),
                              borderRadius: const BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Create',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        customItemsHeights: [
                          ...List<double>.filled(MenuItems.createItems.length, 30),
                        ],
                        items: [
                          ...MenuItems.createItems.map(
                            (item) => DropdownMenuItem<MenuItem>(
                              value: item,
                              child: MenuItems.buildItem(item),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstProjectPage()));
                        },
                        itemHeight: 30,
                        itemPadding: const EdgeInsets.only(left: 16, right: 16),
                        dropdownWidth: 160,
                        dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromARGB(255, 40, 40, 40),
                        ),
                        dropdownElevation: 8,
                        offset: const Offset(0, 8),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.check_circle_outline_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'My Tasks',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.notifications_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Inbox',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.timeline_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Reporting',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.bar_chart_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Portfolios',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.circle_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Goals',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'My Workspace',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.circle,
                      color: Colors.amberAccent,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.circle,
                      color: Colors.cyanAccent,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    InkWell(
                      onTap: () {
                        displayTextInputDialog(context);
                      },
                      child: const Text(
                        'Invite people',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          for (var p in AppData.projectList)
            InkWell(
              /*
              onHover: (value) {
                AppData.hoverColor = const Color.fromARGB(255, 66, 66, 66);
                if (value == false) {
                  AppData.hoverColor = Colors.transparent;
                }
                setState(() {});
              },*/
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(
                              p: p,
                            )));
              },
              child: Container(
                height: 30,
                decoration: BoxDecoration(color: AppData.hoverColor),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    const Icon(
                      Icons.square,
                      color: Colors.blueGrey,
                      size: 10,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      p.name,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }

  Future<void> displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Invite people'),
            content: TextField(
              onChanged: (value) {
                setState(() {});
              },
              controller: textFieldController,
              decoration: const InputDecoration(hintText: "Enter email"),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    AppData.teammates.add(textFieldController.text);
                    MenuItems.fillListA();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  p: widget.p,
                                )));
                  });
                },
              ),
            ],
          );
        });
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [home, share, settings];
  static List<MenuItem> sectionItems = [];
  static List<MenuItem> createItems = [home, share, settings];
  static List<MenuItem> piriortyItems = [
    const MenuItem(text: 'High', icon: Icons.check),
    const MenuItem(text: 'Medium', icon: Icons.check),
    const MenuItem(text: 'Low', icon: Icons.check),
  ];

  static List<MenuItem> assigneeItems = [];

  static const home = MenuItem(text: 'Task', icon: Icons.check_circle_outline);
  static const share = MenuItem(text: 'Message', icon: Icons.messenger_outline);
  static const settings = MenuItem(text: 'Project', icon: Icons.insert_drive_file_outlined);

  static fillList() {
    if (sectionItems.isNotEmpty) {
      sectionItems.clear();
    }
    for (var section in AppData.sectionList) {
      sectionItems.add(MenuItem(text: section.name, icon: Icons.check));
    }
  }

  static fillListA() {
    if (assigneeItems.isNotEmpty) {
      assigneeItems.clear();
    }
    for (var assignee in AppData.teammates) {
      assigneeItems.add(MenuItem(text: assignee, icon: Icons.circle));
    }
  }

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.white, size: 15),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
        //Do something
        break;
      case MenuItems.settings:
        //Do something
        break;
      case MenuItems.share:
        break;
    }
  }
}
