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

  // Add this in class Product
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'] as int,
        name: json['name'] as String,
        price: json['price'] as double,
        image: json['image'] as String);
  }
}



class Category {
  late String name;
  late List<Product> products;
  Category({required this.name, required this.products});
  // Add this in class Category
  factory Category.fromJson(Map<String, dynamic> json) {
    var productsJson = json['products'] as Iterable<dynamic>;
    var products = productsJson.map((p) => Product.fromJson(p)).toList();
    return Category(name: json['name'] as String, products: products);
  }
}

class ItemInCart {
  late Product product;
  late int quantity;
  ItemInCart({required this.product, required this.quantity});
}
