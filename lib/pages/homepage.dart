import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_ecom/models/catalog.dart';
import 'package:flutter_ecom/widgets/homeWidget/catalog_header.dart';
import 'package:flutter_ecom/widgets/homeWidget/catalog_list.dart';
import 'package:flutter_ecom/widgets/drawer.dart';
import 'package:flutter_ecom/widgets/item_widget.dart';
import 'package:flutter_ecom/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  // loadData() async {
  //   final products = await rootBundle.loadString("assets/file/catalog.json");
  //   final decodedProduct = jsonDecode(products);
  //   var productData = decodedProduct["products"];
  //   Catalog.items = List.from(productData)
  //       .map<Items>((item) => Items.fromMap(item))
  //       .toList();
  //   setState(() {});
  // }

  loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    final products = await rootBundle.loadString("assets/file/catalog.json");
    final decodedProduct = jsonDecode(products);
    if (decodedProduct.containsKey("products")) {
      var productData = decodedProduct["products"];
      if (productData != null) {
        Catalog.items = List.from(productData)
            .map<Items>((item) => Items.fromMap(item))
            .toList();
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              children: [
                const CatalogHeader(),
                if (Catalog.items != null && Catalog.items.isNotEmpty)
                  const CatalogList().expand()
                else
                  const CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}


// ListView.builder(
//                 itemCount: Catalog.items.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ItemWidget(item: Catalog.items[index]);
//                 },
//               )

// Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: (Catalog.items.isNotEmpty)
//             ? GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 16,
//                   mainAxisSpacing: 16,
//                 ),
//                 itemBuilder: (BuildContext context, int index) {
//                   final items = Catalog.items[index];
//                   return Card(
//                     clipBehavior: Clip.antiAlias,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8)),
//                     child: GridTile(
//                       header: Container(
//                         decoration: BoxDecoration(
//                             color:
//                                 Theme.of(context).colorScheme.inversePrimary),
//                         child: Text(
//                           items.name,
//                           style: const TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       footer: Container(
//                         decoration: const BoxDecoration(color: Colors.black),
//                         child: Text(
//                           "₹${items.price.toString()}",
//                           style: const TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       child: Image.network(items.image),
//                     ),
//                   );
//                 },
//                 itemCount: Catalog.items.length,
//               )
//             : const Center(child: CircularProgressIndicator()),
//       ),
//       drawer: const AppDrawer(),