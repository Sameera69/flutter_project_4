import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/HomePage.dart';
import 'package:flutter_application_project_4/component/SectionBoard.dart';
import 'package:flutter_application_project_4/models/Section.dart';
import 'package:flutter_application_project_4/models/appData.dart';

class BoardViewPage extends StatelessWidget {
  const BoardViewPage({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ProjectPage widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                child: Row(
                  children: const [
                    Icon(
                      Icons.filter_list,
                      color: Colors.grey,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Filter',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                child: Row(
                  children: const [
                    Icon(
                      Icons.sort,
                      color: Colors.grey,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Sort',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                child: Row(
                  children: const [
                    Icon(
                      Icons.toggle_on_outlined,
                      color: Colors.grey,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Show fields',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
          child: Row(
            children: [
              for (var s in AppData.sectionList)
                SizedBox(
                  width: 230,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        s.name,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      AppData.sectionList.add(Section(
                          name: 'Untitled section',
                          icon: Icons.arrow_drop_down_sharp,
                          isOpen: false,
                          controller: TextEditingController(text: 'Untitled section')));
                      MenuItems.fillList();
                      //setState(() {});
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          color: Colors.grey,
                          size: 12,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Add Section',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            for (var s in AppData.sectionList) SectionBoard(s: s, p: widget.p),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ],
    );
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

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.white, size: 22),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
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
