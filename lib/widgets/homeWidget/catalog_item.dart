import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/catalog.dart';
import 'package:flutter_ecom/widgets/homeWidget/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  final Items catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: (key: catalog.id.toString()),
          child: CatalogImage(image: catalog.image),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.bold.lg
                .color(Color.fromARGB(255, 102, 131, 155))
                .make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "₹${catalog.price}".text.bold.lg.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade300)),
                  child: "Buy".text.make(),
                )
              ],
            ),
          ],
        ))
      ],
    )).white.rounded.square(120).make().py16();
  }
}
