import 'package:flutter/material.dart';
import 'package:flutter_application_1/datamanager.dart';

import '../datamodel.dart';

class MenuPage extends StatelessWidget {
  final DataManger dataManger;
  const MenuPage({super.key, required this.dataManger});

  @override
  Widget build(BuildContext context) {
    var p = Product(id: 1, name: "Dummy Product", price: 2.54, image: "");
    var q = Product(id: 2, name: "Product", price: 54.0, image: "");
    var r = Product(id: 3, name: "Product Dummy ", price: 40.5, image: "");
    var s = Product(id: 4, name: "Coffee Product", price: 45.8, image: "");
    var t = Product(id: 5, name: "Captions Product", price: 75.9, image: "");
    var u = Product(id: 6, name: "Sundra Product", price: 25.8, image: "");
    var v = Product(id: 7, name: "Hello Product", price: 42.5, image: "");
    var w = Product(id: 8, name: "Hi Product", price: 85.6, image: "");
    return ListView(
      children: [
        ProductItem(
          product: p,
          onAdd: () {},
        ),
        ProductItem(
          product: q,
          onAdd: () {},
        ),
        ProductItem(
          product: r,
          onAdd: () {},
        ),
        ProductItem(
          product: s,
          onAdd: () {},
        ),
        ProductItem(
          product: t,
          onAdd: () {},
        ),
        ProductItem(
          product: u,
          onAdd: () {},
        ),
        ProductItem(
          product: v,
          onAdd: () {},
        ),
        ProductItem(
          product: w,
          onAdd: () {},
        )
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final Function onAdd;
  const ProductItem({super.key, required this.product, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Card(
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.asset("images/black_coffee.png"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product.name,
                          style: const TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("\$${product.price}"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: ElevatedButton(
                        onPressed: () {
                          onAdd(product);
                        },
                        child: const Text("Click Me")),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
