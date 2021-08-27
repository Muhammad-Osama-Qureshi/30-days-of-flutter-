import 'package:day6/model/catalog.dart';
import 'package:day6/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetail extends StatelessWidget {
  final Item catalog;

  const HomeDetail({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      body:SafeArea(
        
        bottom: false,
        child: Column(
          children: [
            
            Hero(
              tag:Key(catalog.id.toString()),
              child: Image.network(catalog.image).py12().h32(context)),
              Expanded(child: VxArc(
                height: 30.0,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  width: context.screenWidth,
                  child: Column(
                    children: [
                          catalog.name.text.xl4.bold.make(),
            catalog.desc.text.xl2.caption(context).make(),
            10.heightBox,
                    ],
                  ).py64(),
                  color: Colors.white,
                ),
              )
              ),
           
          ],
        ),
      ),
      bottomNavigationBar:     Container(
        color: Colors.white,
        child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl4.red900.make().pOnly(left: 10),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(MyTheme.bluishColor),
                            shape: MaterialStateProperty.all(StadiumBorder())),
                        onPressed: () {},
                        child: "Buy".text.lg.center.white.make()).wh(100, 40)
                  ]).pOnly(right: 8,bottom: 10),
      )
    );
  }
}
