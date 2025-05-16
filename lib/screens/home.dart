import 'package:flutter/material.dart';
import 'package:practice_app/models/CategoryModel.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categoryList = [];

  void _getCategories() {
    categoryList = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: bar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchBar(),
          SizedBox(height: 30),
          categories(),
          helloUser(),
        ],
      ),
    );
  }

  Column categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Categories",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        categoryListView(),
      ],
    );
  }

  Container categoryListView() {
    return Container(
      height: 140,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: ListView.separated(
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 20),
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            decoration: BoxDecoration(
              color: categoryList[index].bgColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(categoryList[index].icon, color: Colors.black87),
                ),
              ],
            ),
          );
        },
      ),
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
          hintText: "Search Items",
          prefixIcon: Icon(Icons.search_rounded, color: Colors.grey),
          suffixIcon: SizedBox(
            width: 60,
            child: IntrinsicHeight(
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
