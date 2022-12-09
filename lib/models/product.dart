class Product {
  final String? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Product({this.id, this.name, this.desc, this.price, this.color, this.image});
}

class ProductData {
  static final products = [
    Product(
        id: '1',
        name: 'iPhone 14 pro max',
        desc: 'This iPhone 14 pro max is latest in 2022',
        price: 1499,
        color: 'red',
        image: 'https://www.telstra.com.au/content/dam/tcom/devices/mobile/mhdwhst-14pm/deeppurple/landscape-front.png'),
  ];
}
