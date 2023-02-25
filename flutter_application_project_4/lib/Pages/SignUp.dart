import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/WelcomePage.dart';
import 'package:flutter_application_project_4/models/appData.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/logo1.png'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sign up',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'By signing up, I agree to the Asana ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      )),
                  TextSpan(
                      text: 'Privacy Policy ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      )),
                  TextSpan(
                      text: 'and ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      )),
                  TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 600,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'name@company.com',
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                fixedSize: const Size(600, 50),
              ),
              onPressed: () {
                setState(() {
                  AppData.email = emailController.text;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomePage()));
              },
              child: const Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.check_circle_outline_rounded),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '''Get access to unlimited
tasks, project, and
storage.''',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.check_circle_outline_rounded),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '''See different views like list,
board, and calender.''',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.check_circle_outline_rounded),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '''Invite your teammates to
explore Asana''',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
