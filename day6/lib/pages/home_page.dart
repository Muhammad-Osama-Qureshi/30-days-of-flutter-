import 'package:day6/model/catalog.dart';
import 'package:day6/widgets/Drawer.dart';
import 'package:day6/widgets/Itemwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  final dummylist = List.generate(30, (index) => CatalogModel.item[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummylist[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
