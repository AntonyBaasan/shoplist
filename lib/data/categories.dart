import 'package:flutter/material.dart';
import 'package:shoplist/models/category.dart';
import 'package:shoplist/models/category_enum.dart';

final categories = {
  CategoryEnum.vegetables: const Category(
    name: 'Vegetables',
    color: Colors.green,
  ),
  CategoryEnum.dairy: const Category(
    name: 'Dairy',
    color: Colors.red,
  ),
};
