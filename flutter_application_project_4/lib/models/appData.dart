import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/models/Project.dart';
import 'package:flutter_application_project_4/models/Section.dart';
import 'package:flutter_application_project_4/models/Task.dart';

class AppData {
  static String email = 'sam@hotmail.com';
  static String name = '';
  static Color colorContainer = Colors.white;
  static Color colorText = Colors.black;
  static String firstProjectName = 'XYZ Project';
  static String task1 = 'Task 1: First';
  static String task2 = 'Task 2: Second';
  static String task3 = 'Task 3: Third';

  static Color hoverColor = Colors.transparent;
  static Color listHoverDiv = Colors.transparent;
  static Color listHoverTxt = const Color.fromARGB(255, 235, 235, 235);

  static Color navBarSelected = Color.fromARGB(255, 66, 66, 66);
  static bool isSelectedNavBar = true;

  static bool isListHover = false;
  static List<Color> listHoverDivL = [];
  static List<Color> listHoverTxtL = [];
  static List<bool> isListHoverL = [];
  static TextStyle textStyle = TextStyle(
    color: AppData.listHoverTxtL[0],
  );

  static List<TextStyle> textStyleL = [];

  static bool isToDoOpen = true;
  static IconData toDoIcon = Icons.arrow_drop_down_sharp;

  static List<Section> sectionList = [];
  static List<Task> tasksList = [];
  static List<Project> projectList = [];
  static List<String> teammates = [];

  static bool isSatePickerOpen = false;

  static int pageViewChoice = 0;

  static FillList() {
    for (int j = 0; j < 9; j++) {
      if (j != 1) {
        listHoverDivL.add(Colors.transparent);
      } else {
        listHoverDivL.add(Colors.white);
      }
    }
    for (int j = 0; j < 9; j++) {
      if (j != 1) {
        listHoverTxtL.add(const Color.fromARGB(255, 235, 235, 235));
      } else {
        listHoverTxtL.add(Colors.white);
      }
    }
    for (int j = 0; j < 9; j++) {
      isListHoverL.add(false);
    }
    for (int j = 0; j < 9; j++) {
      textStyleL.add(TextStyle(
        color: AppData.listHoverTxtL[j],
      ));
    }

    sectionList.add(Section(
        name: 'To do',
        icon: Icons.arrow_drop_down_sharp,
        isOpen: true,
        controller: TextEditingController(text: 'To do')));
    sectionList.add(Section(
        name: 'Doing',
        icon: Icons.arrow_drop_down_sharp,
        isOpen: false,
        controller: TextEditingController(text: 'Doing')));
    sectionList.add(Section(
        name: 'Done',
        icon: Icons.arrow_drop_down_sharp,
        isOpen: false,
        controller: TextEditingController(text: 'Done')));
  }
/*
  temp() {
    projectList.add(Project(name: firstProjectName, owner: email, teammates: teammates));
    tasksList.add(Task(
        title: task1,
        assignee: email,
        dueDate: 'today - 12',
        priority: 'High',
        controller: TextEditingController(text: task1),
        completeIcon: Icons.check_circle_outline,
        isCompleted: false,
        sectionName: 'To do',
        projectName: firstProjectName));
    tasksList.add(Task(
        title: task2,
        assignee: email,
        dueDate: '13 - 16',
        priority: 'Medium',
        controller: TextEditingController(text: task2),
        completeIcon: Icons.check_circle_outline,
        isCompleted: false,
        sectionName: 'To do',
        projectName: firstProjectName));
    tasksList.add(Task(
        title: task3,
        assignee: email,
        dueDate: '17 - 20',
        priority: 'Low',
        controller: TextEditingController(text: task3),
        completeIcon: Icons.check_circle_outline,
        isCompleted: false,
        sectionName: 'To do',
        projectName: firstProjectName));
  }*/
}
