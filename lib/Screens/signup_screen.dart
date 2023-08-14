import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../login_screen.dart';
import '../main.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
          Text(
            "Sign Up",
            style: TextStyle(
                color: primaryColor, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Container(
            alignment: Alignment.center,
            height: 230,
            child: Image.asset("assets/Frame 33.png"),
          ),
          SizedBox(
              height: 300,
              width: 400,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  shadowColor: Colors.grey,
                  elevation: 10,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'User Name',
                                  prefixIcon: const Icon(Icons.account_circle),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  fillColor: Colors.grey[200],
                                  filled: true),
                            )),
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  prefixIcon: const Icon(Icons.email_outlined),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  fillColor: Colors.grey[200],
                                  filled: true),
                            )),
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  prefixIcon:
                                      const Icon(Icons.password_outlined),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  fillColor: Colors.grey[200],
                                  filled: true),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: const Text("Sign Up")),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(fontSize: 16),
                            ),
                            CupertinoButton(
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                      fontSize: 16, color: primaryColor),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                })
                          ],
                        ),
                      ])))
        ]))));
  }
}
