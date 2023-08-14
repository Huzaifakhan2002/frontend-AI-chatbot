import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[300],
        ),
        title: const Text('Chat Gpt'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.white, Colors.blueAccent])),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 45,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60), color: Colors.white),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.mic_none_rounded),
                  hintText: " Search..."),
            ),
          ),
          Icon(Icons.send, color: primaryColor),
        ],
      ),
    );
  }
}
