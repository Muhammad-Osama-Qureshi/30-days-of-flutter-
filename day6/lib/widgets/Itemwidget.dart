import 'package:day6/model/catalog.dart';
import 'package:flutter/material.dart';
import 'package:day6/model/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.price.toString()),
      ),
    );
  }
}
