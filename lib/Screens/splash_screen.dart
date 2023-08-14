import 'package:flutter/material.dart';
import 'package:myapp/Screens/landing_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _WellComePageState();
}

class _WellComePageState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LandingPage()
        )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.white, Colors.blueAccent])),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.asset("assets/Frame 33.png"),),const Text(
                "AI",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 30),
              )
            ],
          )),
    );
  }
}
