import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/component/BoaredViewPage.dart';
import 'package:flutter_application_project_4/component/MainNav.dart';
import 'package:flutter_application_project_4/component/NavBar.dart';
import 'package:flutter_application_project_4/models/Project.dart';
import 'package:flutter_application_project_4/models/Section.dart';
import 'package:flutter_application_project_4/models/Task.dart';
import 'package:flutter_application_project_4/models/appData.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
    required this.p,
  }) : super(key: key);
  Project p;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    if (AppData.sectionList.isEmpty) {
      AppData.FillList();
    }
    MenuItems.fillListA();
    MenuItems.fillList();
    super.initState();
  }

  static int pageIndex = 0;
  static Project p = AppData.projectList.first;

  @override
  Widget build(BuildContext context) {
    p = widget.p;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 33, 33),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 40, 40, 40),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.menu_outlined,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('assets/images/logo2.png'),
              ],
            ),
            Container(
              width: 600,
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 56, 56, 56),
                  border: Border.all(color: Colors.transparent),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.circle,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          NavBar(
            p: p,
          ),
          ProjectPage(
            p: p,
          ),
        ],
      ),
    );
  }
}

class ProjectPage extends StatefulWidget {
  ProjectPage({Key? key, required this.p}) : super(key: key);

  Project p;

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          NavMain(
            p: widget.p,
          ),
          if (AppData.pageViewChoice == 0) ListViewPage(widget: widget),
          if (AppData.pageViewChoice == 1) BoardViewPage(widget: widget),
        ],
      ),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ProjectPage widget;

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(36, 16, 16, 16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 189, 189, 189)),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
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
                      'Add task',
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
        Container(
          padding: const EdgeInsets.fromLTRB(36, 0, 36, 0),
          width: MediaQuery.of(context).size.width - 250,
          child: Column(
            children: [
              const Divider(
                color: Colors.grey,
                height: 0,
              ),
              SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Task name',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 400,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Color.fromARGB(255, 235, 235, 235),
                      size: 12,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                      width: 0,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Assignee',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                      width: 0,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Due date',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                      width: 0,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Priority',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                      width: 0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 235, 235, 235),
                      size: 12,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 0,
              ),
              const SizedBox(
                height: 20,
              ),
              for (var section in AppData.sectionList)
                Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (section.isOpen == true) {
                              section.icon = Icons.arrow_right_outlined;
                              section.isOpen = false;
                            } else {
                              section.icon = Icons.arrow_drop_down_sharp;
                              section.isOpen = true;
                            }
                            setState(() {});
                          },
                          child: Icon(
                            section.icon,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Stack(
                          children: [
                            const Text(
                              '',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: 133,
                              child: TextFormField(
                                onChanged: (value) {
                                  section.name = value;
                                  MenuItems.fillList();
                                  setState(() {});
                                },
                                style: const TextStyle(color: Colors.white),
                                controller: section.controller,
                                decoration: const InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            AppData.sectionList.remove(section);
                            MenuItems.fillList();
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.clear,
                            color: Colors.grey,
                            size: 14,
                          ),
                        ),
                      ],
                    ),
                    if (section.isOpen) SectionBlock(s: section, p: widget.widget.p),
                  ],
                ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  AppData.sectionList.add(Section(
                      name: 'Untitled section',
                      icon: Icons.arrow_drop_down_sharp,
                      isOpen: false,
                      controller: TextEditingController(text: 'Untitled section')));
                  MenuItems.fillList();
                  setState(() {});
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
        )
      ],
    );
  }
}

class SectionBlock extends StatefulWidget {
  SectionBlock({Key? key, required this.s, required this.p}) : super(key: key);
  Section s;
  Project p;
  @override
  State<SectionBlock> createState() => _SectionBlockState();
}

class _SectionBlockState extends State<SectionBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var task in AppData.tasksList)
          if (widget.s.name == task.sectionName)
            if (widget.p.name == task.projectName)
              tableRow(
                task: task,
                iconColor: Colors.white,
                p: widget.p,
                onDelete: () {
                  setState(() {});
                },
              ),
        const Divider(
          color: Colors.grey,
          height: 0,
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            AppData.tasksList.add(Task(
                title: '',
                assignee: widget.p.ownerEmail,
                dueDate: DateFormat.MMMd().format(DateTime.now().add(const Duration(days: 8))).toString(),
                priority: '',
                controller: TextEditingController(),
                completeIcon: Icons.check_circle_outline,
                isCompleted: false,
                sectionName: widget.s.name,
                projectName: widget.p.name,
                priorityColor: Colors.white));
            setState(() {});
          },
          child: Row(
            children: const [
              SizedBox(
                width: 30,
              ),
              Text(
                'Add task ...',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class tableRow extends StatefulWidget {
  tableRow({Key? key, required this.task, required this.iconColor, required this.onDelete, required this.p})
      : super(key: key);
  Task task;
  Color iconColor;
  Project p;
  Function() onDelete;
  @override
  State<tableRow> createState() => _tableRowState();
}

class _tableRowState extends State<tableRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.grey,
          height: 0,
        ),
        SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  if (widget.task.isCompleted == true) {
                    widget.task.isCompleted = false;
                    widget.iconColor = Colors.white;
                  } else {
                    widget.task.isCompleted = true;
                    widget.iconColor = Colors.green;
                  }
                  setState(() {});
                },
                child: Icon(
                  widget.task.completeIcon,
                  color: widget.iconColor,
                  size: 18,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Stack(
                children: [
                  const Text(
                    '',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
                    child: SizedBox(
                      width: 450,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: widget.task.controller,
                        decoration: const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 7,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        customButton: const Icon(
                          Icons.compare_arrows_rounded,
                          size: 15,
                          color: Colors.grey,
                        ),
                        customItemsHeights: [
                          ...List<double>.filled(MenuItems.sectionItems.length, 30),
                        ],
                        items: [
                          ...MenuItems.sectionItems.map(
                            (item) => DropdownMenuItem<MenuItem>(
                              value: item,
                              child: MenuItems.buildItem(item),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          widget.task.sectionName = value!.text;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        p: widget.p,
                                      )));
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
                  ),
                  Positioned(
                    right: 5,
                    top: 7,
                    child: InkWell(
                      onTap: () {
                        AppData.tasksList.remove(widget.task);
                        widget.onDelete();
                      },
                      child: const Icon(
                        Icons.remove_circle_outline,
                        color: Colors.red,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
              const VerticalDivider(
                color: Colors.grey,
                width: 0,
              ),
              const SizedBox(
                width: 8,
              ),
              Stack(
                children: [
                  const SizedBox(
                    width: 133,
                    child: Text(
                      '',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      widget.task.assignee,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 2,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        customButton: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                          size: 14,
                        ),
                        customItemsHeights: [
                          ...List<double>.filled(MenuItems.assigneeItems.length, 30),
                        ],
                        items: [
                          ...MenuItems.assigneeItems.map(
                            (item) => DropdownMenuItem<MenuItem>(
                              value: item,
                              child: MenuItems.buildItem(item),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          widget.task.assignee = value!.text;
                          widget.onDelete();
                          //MenuItems.onChanged(context, value as MenuItem);
                        },
                        itemHeight: 30,
                        itemPadding: const EdgeInsets.only(left: 16, right: 16),
                        dropdownWidth: 300,
                        dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromARGB(255, 40, 40, 40),
                        ),
                        dropdownElevation: 8,
                        offset: const Offset(0, 8),
                      ),
                    ),
                  ),
                ],
              ),
              const VerticalDivider(
                color: Colors.grey,
                width: 0,
              ),
              const SizedBox(
                width: 8,
              ),
              Stack(
                children: [
                  const Text(
                    '',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 130,
                    child: Text(
                      widget.task.dueDate,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            AppData.isSatePickerOpen = true;
                          });
                        },
                        child: const Icon(
                          Icons.clear,
                          size: 14,
                          color: Colors.grey,
                        )),
                  ),
                ],
              ),
              const VerticalDivider(
                color: Colors.grey,
                width: 0,
              ),
              const SizedBox(
                width: 8,
              ),
              Stack(
                children: [
                  const Text(
                    '',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 120,
                    child: Text(
                      '',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      customButton: Container(
                        width: 100,
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        decoration: BoxDecoration(
                            color: widget.task.priorityColor,
                            borderRadius: const BorderRadius.all(Radius.circular(20))),
                        child: Center(
                          child: Text(
                            widget.task.priority,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      customItemsHeights: [
                        ...List<double>.filled(MenuItems.piriortyItems.length, 30),
                      ],
                      items: [
                        ...MenuItems.piriortyItems.map(
                          (item) => DropdownMenuItem<MenuItem>(
                            value: item,
                            child: MenuItems.buildItem(item),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        widget.task.priority = value!.text;
                        if (value.text == 'High') {
                          widget.task.priorityColor = Colors.red;
                        } else if (value.text == 'Medium') {
                          widget.task.priorityColor = Colors.orange;
                        } else {
                          widget.task.priorityColor = Colors.amber;
                        }
                        widget.onDelete();
                        //MenuItems.onChanged(context, value as MenuItem);
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
              const VerticalDivider(
                color: Colors.grey,
                width: 0,
              ),
            ],
          ),
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
