import 'package:day6/pages/Home_screenwidgets/catalogitem.dart';
import 'package:day6/pages/home_detail.dart';

import 'package:flutter/material.dart';
import 'package:day6/model/catalog.dart';


class Cataloglist extends StatelessWidget {
  const Cataloglist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetail(catalog: catalog),)),
          child: CatalogItem(catalog: catalog));
      },
    );
  }
}