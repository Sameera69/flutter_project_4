import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/MainObjective.dart';

class TellUsPage extends StatefulWidget {
  const TellUsPage({
    super.key,
  });

  @override
  State<TellUsPage> createState() => _TellUsPage();
}

class _TellUsPage extends State<TellUsPage> {
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

  String dropdownvalue = 'Choose one...';

  // List of items in our dropdown menu
  var items = [
    'Choose one...',
    'Manager',
    'Executive (e.g. VP or C-suite)',
    'Director',
    'Team member / Individual contributor',
    'Freelancer',
    'Business owner',
    'Student',
    'Other',
  ];

  var items2 = [
    'Administrative Assistant',
    'Communications',
    'Customer Support',
    'Data or Analytics',
    'Design',
  ];

  var items3 = [
    'Education Professional',
    'Engineering',
    'Human Resources',
    'Information Technology',
    'Legal',
  ];
  var items4 = [
    'Marketing',
    'Project or Program Management',
    'Research and Development',
    'Sales',
    'Other',
  ];
  Color colorContainer = Colors.white;
  Color colorText = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/logo1.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(60, 36, 36, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Tell us a little bit about yourself',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'This helps us recommend features for you.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'What\'s your primary role?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            DropdownButton(
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                  if (dropdownvalue != 'Choose one...') {
                    submit = true;
                  }
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'What kind of work do you do?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'select all that apply:',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                for (var i in items2)
                  WorkCard(
                    WorkName: i,
                    colorContainer: colorContainer,
                    colorText: colorText,
                  ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                for (var i in items3)
                  WorkCard(
                    WorkName: i,
                    colorContainer: colorContainer,
                    colorText: colorText,
                  ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                for (var i in items4)
                  WorkCard(
                    WorkName: i,
                    colorContainer: colorContainer,
                    colorText: colorText,
                  ),
              ],
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
                  onPressed: submit
                      ? () =>
                          {Navigator.push(context, MaterialPageRoute(builder: (context) => const MainObjectivePage()))}
                      : null,
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
                    'Skip',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Wrong account? ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      )),
                  TextSpan(
                      text: 'Log in ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                      )),
                  TextSpan(
                      text: 'Instead.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  submitData() {
    setState(() {});
    // Do something here
  }
}
