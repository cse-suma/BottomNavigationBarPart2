import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",
        style: TextStyle(fontSize:40),),
      ),
      body:Center(
        child: Image.network('https://cdn.pixabay.com/photo/2024/05/24/19/06/bird-8785666_1280.jpg')
       
      ),
    );
  }
}
