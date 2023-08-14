import 'package:flutter/material.dart';
import 'package:myapp/Screens/signup_screen.dart';
import 'package:myapp/main.dart';
import '../login_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Your AI Assistant",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "Using this software,you can ask you\nquestions and receive articles using\n     artificial intelligence assistant",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset("assets/Frame 33.png"),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor,
                  ),
                  alignment: Alignment.center,
                  width: 180,
                  height: 30,
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: primaryColor,
                  ),
                  alignment: Alignment.center,
                  width: 180,
                  height: 30,
                  child: const Text(
                    'Log In',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ]),
          ],
        )),
      ),
    );
  }
}
