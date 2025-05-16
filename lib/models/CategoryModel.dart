import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  IconData icon;
  Color bgColor;

  CategoryModel({
    required this.name,
    required this.icon,
    required this.bgColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: "Sample 1",
        icon: Icons.access_alarm,
        bgColor: const Color.fromARGB(255, 171, 245, 209),
      ),
    );

    categories.add(
      CategoryModel(
        name: "Sample 2",
        icon: Icons.ac_unit_rounded,
        bgColor: const Color.fromARGB(255, 176, 236, 236),
      ),
    );

    categories.add(
      CategoryModel(
        name: "Sample 3",
        icon: Icons.zoom_in_rounded,
        bgColor: const Color.fromARGB(255, 223, 191, 191),
      ),
    );

    categories.add(
      CategoryModel(
        name: "Sample 4",
        icon: Icons.account_box,
        bgColor: const Color.fromARGB(255, 186, 210, 230),
      ),
    );

    categories.add(
      CategoryModel(
        name: "Sample 5",
        icon: Icons.keyboard_arrow_up,
        bgColor: const Color.fromARGB(255, 216, 173, 224),
      ),
    );

    return categories;
  }
}
