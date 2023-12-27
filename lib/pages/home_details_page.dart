import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Items catalog;
  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(
            tag: (key: catalog.id.toString()),
            child: Image.network(catalog.image),
          ),
        ],
      ),
    );
  }
}
