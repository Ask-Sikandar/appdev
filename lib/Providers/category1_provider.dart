// category_provider.dart
import 'package:flutter/material.dart';
import '../Models/category1.dart';
import '../service/category1_service.dart';

class CategoryProvider with ChangeNotifier {
  final Category1Service _categoryService = Category1Service();
  List<CategoryLevel1> _categories = [];

  List<CategoryLevel1> get categories => _categories;

  CategoryProvider() {
    fetchCategories();
  }

  void fetchCategories() {
    _categories = _categoryService.getCategories();
    notifyListeners();
  }
}
