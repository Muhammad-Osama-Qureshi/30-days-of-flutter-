import 'package:day6/model/catalog.dart';
import 'package:day6/widgets/Drawer.dart';
import 'package:day6/widgets/Itemwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.Json");
    final decodeData = jsonDecode(catalogJson);
    var productData = decodeData["products"];
//map<Item>((item) => Item.fromMap(item)).toList();
    //  CatalogModel.items =
    //       List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    CatalogModel.items =
        List<Item>.from(productData.map((model) => Item.fromMap(model)))
            .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: (CatalogModel.items.isNotEmpty)
          ? GridView.builder(
            
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index) {
                final item = CatalogModel.items[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: GridTile(
                  
                  child: Image.network(item.image)));
              },
            )
          : Center(child: CircularProgressIndicator()),
      drawer: MyDrawer(),
    );
  }
}
