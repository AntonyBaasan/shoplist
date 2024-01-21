import 'package:shoplist/data/categories.dart';
import 'package:shoplist/models/category_enum.dart';
import 'package:shoplist/models/grocery_item.dart';

final groceryItems = [
  GroceryItem(
    id: 'a',
    name: 'Milk',
    category: categories[CategoryEnum.dairy]!,
    quantity: 1,
  ),
  GroceryItem(
    id: 'c',
    name: 'Carrot',
    category: categories[CategoryEnum.vegetables]!,
    quantity: 1,
  ),
];
