import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/models/Project.dart';
import 'package:flutter_application_project_4/models/Section.dart';
import 'package:flutter_application_project_4/models/appData.dart';

class SectionBoard extends StatelessWidget {
  SectionBoard({Key? key, required this.s, required this.p}) : super(key: key);
  Section s;
  Project p;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          for (var t in AppData.tasksList)
            if (t.projectName == p.name)
              if (t.sectionName == s.name)
                Column(
                  children: [
                    Container(
                      width: 200,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 67, 67, 67).withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          border: Border.all(width: 2, color: Colors.transparent),
                          borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.check_circle_outline,
                                //color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 130,
                                child: Text(
                                  t.title,
                                  overflow: TextOverflow.ellipsis,
                                  //  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                decoration: BoxDecoration(
                                    color: t.priorityColor, borderRadius: const BorderRadius.all(Radius.circular(20))),
                                child: Center(
                                  child: Text(
                                    t.priority,
                                    //  style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                t.assignee,
                                //  style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                t.dueDate,
                                //  style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
