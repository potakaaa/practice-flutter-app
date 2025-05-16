import 'package:flutter/material.dart';
import 'package:practice_app/models/CategoryModel.dart';
import 'package:practice_app/widgets/common/custom_app_bar.dart';
import 'package:practice_app/widgets/home/categories_section.dart';
import 'package:practice_app/widgets/home/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryList = CategoryModel.getCategories();

    return Scaffold(
      appBar: const CustomAppBar(title: 'Home Page'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchBar(),
          const SizedBox(height: 30),
          CategoriesSection(categoryList: categoryList),
          const Expanded(child: Center(child: Text("Hello User"))),
        ],
      ),
    );
  }
}
