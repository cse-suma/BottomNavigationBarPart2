import 'package:flutter/material.dart';
class Chat2 extends StatefulWidget {
  const Chat2({super.key});

  @override
  State<Chat2> createState() => _Chat2State();
}

class _Chat2State extends State<Chat2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Center(child: Text("Chat Screen", style: TextStyle(fontSize: 40,color: Colors.teal,fontWeight: FontWeight.bold),)),

    );
  }
}
