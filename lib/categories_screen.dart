import 'package:flutter/material.dart';
import 'package:recipe_mgmt/category_item.dart';
import './dummy_data.dart';
import './category.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: <Widget>[
        ...DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(cat.title, cat.color);
        }).toList()
      ],
    );
  }
}
