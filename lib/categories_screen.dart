import 'package:flutter/material.dart';
import 'package:recipe_mgmt/category_item.dart';
import './dummy_data.dart';
import './category.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(5),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: <Widget>[
          ...DUMMY_CATEGORIES.map((cat) {
            return CategoryItem(cat.id, cat.title, cat.color);
          }).toList()
        ],
      ),
    );
  }
}
