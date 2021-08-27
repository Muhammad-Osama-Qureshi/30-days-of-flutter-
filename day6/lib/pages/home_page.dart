import 'package:day6/model/catalog.dart';
import 'package:day6/pages/Home_screenwidgets/catalog_header.dart';
import 'package:day6/pages/Home_screenwidgets/cataloglist.dart';


import 'package:velocity_x/velocity_x.dart';

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
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child: Column(
              children: [
                CatalogHeader(),
                if (CatalogModel.items.isNotEmpty)
                  Cataloglist().py16().expand()
                else
                  Center(child: CircularProgressIndicator()).p16().expand()
              ],
            )),
      ),
    );
  }
}






