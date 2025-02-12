import 'package:flutter/material.dart';
import 'package:recipe_mgmt/meal_item.dart';
import './dummy_data.dart';
import './meal.dart';

List<Meal> setCategoryMeals(categoryId) {
  return DUMMY_MEALS.where((meal) {
    return meal.categories.contains(categoryId);
  }).toList();
}

class CategoryMealsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  final List<Meal> categoryMeals;

  CategoryMealsScreen(
    this.categoryId,
    this.categoryTitle,
  ) : categoryMeals = setCategoryMeals(categoryId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              title: categoryMeals[index].title,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration,
              imageUrl: categoryMeals[index].imageUrl);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
