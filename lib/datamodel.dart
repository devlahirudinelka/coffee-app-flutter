class Product {
  late int id;
  late String name;
  late double price;
  late String image;
  String get imageUrl =>
      "https://firtman.github.io/coffemasters/api/images/$image";
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
}

class Category {
  late String name;
  late List<Product> products;
  Category({required this.name, required this.products});
}

class ItemCart {
  late Product product;
  late int quantity;
  ItemCart({required this.product, required this.quantity});
}
