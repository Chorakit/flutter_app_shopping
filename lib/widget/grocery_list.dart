import 'package:flutter/material.dart';
import 'package:flutter_application_shopping/data/dummy_item.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  void _addItem(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            onPressed: () {
              _addItem(context);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder:
            (ctx, index) => ListTile(
              title: Text(groceryItems[index].name),
              leading: Container(
                width: 20,
                height: 20,
                color: groceryItems[index].category.color,
              ),
              trailing: Text(groceryItems[index].quantity.toString()),
            ),
      ),
    );
  }
}
