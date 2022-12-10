class Product {
  final String? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Product({this.id, this.name, this.desc, this.price, this.color, this.image});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as String,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }
}

class ProductData {
  static List<Product> products = [];
}
