import 'package:flutter/cupertino.dart';

class Task {
  String title;
  String assignee;
  String dueDate;
  String priority;
  final TextEditingController controller;
  final IconData completeIcon;
  bool isCompleted;
  String sectionName;
  String projectName;
  Color priorityColor;

  Task({
    required this.title,
    required this.assignee,
    required this.dueDate,
    required this.priority,
    required this.controller,
    required this.completeIcon,
    required this.isCompleted,
    required this.sectionName,
    required this.projectName,
    required this.priorityColor,
  });
}
