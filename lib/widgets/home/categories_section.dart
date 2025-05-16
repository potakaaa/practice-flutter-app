import 'package:flutter/material.dart';
import 'package:practice_app/models/CategoryModel.dart';

class CategoriesSection extends StatelessWidget {
  final List<CategoryModel> categoryList;

  const CategoriesSection({super.key, required this.categoryList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Categories",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        _buildCategoryListView(),
      ],
    );
  }

  Widget _buildCategoryListView() {
    return Container(
      height: 140,
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListView.separated(
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
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
                  decoration: const BoxDecoration(
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
}
