import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  createState() => MySignUpState();
}

class MySignUpState extends State<Signup> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController emailc = TextEditingController();
  final passc = TextEditingController();
  final confirmpassc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Signing Up "),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: emailc,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email"),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is empty";
                } else if (!value.contains("@") || !value.contains(".com")) {
                  return "Enter valid email address";
                }
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              controller: passc,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Password"),
              ),
              validator: (value1) {
                if (value1!.length < 8) {
                  return "Password must be greater than 7 characters";
                }
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              controller: confirmpassc,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Confirm Password"),
              ),
              validator: (value) {
                if (value != passc.text) {
                  return "Your passwords did not match";
                }
              },
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  print("Submitted");
                }
              },
              child: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
