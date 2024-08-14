import 'package:flutter/material.dart';
class Setting2 extends StatefulWidget {
  const Setting2({super.key});

  @override
  State<Setting2> createState() => _Setting2State();
}

class _Setting2State extends State<Setting2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Text("Setting Screen", style: TextStyle(fontSize: 40),),
    );
  }
}
