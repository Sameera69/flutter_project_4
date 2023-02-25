import 'package:flutter/material.dart';

class Section {
  String name;
  IconData icon;
  bool isOpen;
  TextEditingController controller;

  Section({
    required this.name,
    required this.icon,
    required this.isOpen,
    required this.controller,
  });
}
