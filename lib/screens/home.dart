import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(),
      body: Column(children: [searchBar(), helloUser()]),
    );
  }

  Expanded helloUser() => Expanded(child: Center(child: Text("Hello User")));

  Container searchBar() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withAlpha(5),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(Icons.search_rounded, color: Colors.grey),
          suffixIcon: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                VerticalDivider(
                  color: Colors.black,
                  thickness: 0.3,
                  indent: 10,
                  endIndent: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.filter_outlined, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
        width: 40,
        height: 40,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
          size: 20,
        ),
      ),
      actions: [
        GestureDetector(
          child: Container(
            margin: EdgeInsets.all(10),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.carpenter, color: Colors.grey, size: 20),
          ),
        ),
      ],
    );
  }
}
