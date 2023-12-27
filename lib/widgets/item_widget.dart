import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Items item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        trailing: Text(
          "₹${item.price}",
          // ignore: deprecated_member_use
          textScaleFactor: 1.5,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 51, 50, 48)),
        ),
      ),
    );
  }
}
