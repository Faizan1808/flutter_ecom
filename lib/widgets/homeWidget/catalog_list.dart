import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/catalog.dart';
import 'package:flutter_ecom/pages/home_details_page.dart';
import 'package:flutter_ecom/widgets/homeWidget/catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final catalog = Catalog.items[index];
        return InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetailPage(catalog: catalog),
              ),
            ),
          },
          child: CatalogItem(catalog: catalog),
        );
      },
      itemCount: Catalog.items.length,
    );
  }
}
