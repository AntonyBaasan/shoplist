import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shoplist/data/categories.dart';
import 'package:shoplist/models/category.dart';
import 'package:shoplist/models/grocery_item.dart';
import 'package:shoplist/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({Key? key}) : super(key: key);

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  List<GroceryItem> _groceryItems = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _addItem() async {
    await Navigator.of(context)
        .push<GroceryItem>(MaterialPageRoute(builder: (ctx) => NewItem()));

    _loadData();
  }

  void _loadData() async {
    final url = Uri.https(
        'hashitta-baas-default-rtdb.firebaseio.com', 'shopping-list.json');
    final response = await http.get(url);
    final Map<String, dynamic> listData = json.decode(response.body);
    final List<GroceryItem> _loadedItem = [];
    for (var item in listData.entries) {
      final category = categories.entries
          .firstWhere((element) => element.value.name == item.value['category'])
          .value;
      _loadedItem.add(GroceryItem(
        id: item.key,
        name: item.value['name'],
        category: category,
        quantity: item.value['quantity'],
      ));
    }

    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _groceryItems = _loadedItem.reversed.toList();
      _isLoading = false;
    });
  }

  void _removeItem(GroceryItem item) {
    setState(() {
      _groceryItems.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    var items = _groceryItems;
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Groceries'),
          actions: [
            IconButton(
              onPressed: _addItem,
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (ctx, index) {
            return Dismissible(
              key: ValueKey(items[index].id),
              onDismissed: (direction) => _removeItem(items[index]),
              child: ListTile(
                leading: Container(
                  width: 24,
                  height: 24,
                  color: items[index].category.color,
                ),
                trailing: Text(items[index].quantity.toString()),
                title: Text(items[index].name),
              ),
            );
          },
        ));
  }
}
