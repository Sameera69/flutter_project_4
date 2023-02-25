import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_project_4/Pages/TellUs.dart';
import 'package:flutter_application_project_4/models/appData.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({
    super.key,
  });

  @override
  State<WelcomePage> createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  bool submitName = false;
  bool submitPassword = false;
  bool submit = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.addListener(() {
      setState(() {
        submitName = nameController.text.isNotEmpty;
      });
    });
    passwordController.addListener(() {
      setState(() {
        submitPassword = passwordController.text.isNotEmpty;
        if (submitPassword && submitName) {
          submit = true;
        }
      });
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(60, 36, 36, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Welcome to Asana!',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'You\'re signing up as ${AppData.email}',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'What\'s your full name?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Please enter your name.',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Create a password with at least 8 characters.',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
              ),
              onPressed: submit
                  ? () async {
                      final ruselt = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(email: AppData.email, password: passwordController.text);
                      AppData.name = nameController.text;
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TellUsPage()));
                    }
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
              height: 40,
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
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const TellUsPage()));
    });
  }
}
