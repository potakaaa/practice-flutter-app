import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: bar(), body: Center(child: Text('Hello, World!')));
  }

  AppBar bar() {
    return AppBar(
      title: Text(
        'Home Page',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 29,
          //     spreadRadius: 10,
          //     offset: Offset(10, 10),
          //     blurStyle: BlurStyle.outer,
          //   ),
          // ],
        ),
        child: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey, size: 20),
      ),
    );
  }
}
