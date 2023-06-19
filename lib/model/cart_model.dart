class CartModel {
  String img;
  String? name;
  int? qty;
  double? price;

  CartModel({
    required this.img,
    this.name,
    this.qty,
    this.price,
  });

  factory CartModel.fromJson(json) {
    return CartModel(
      img: json['img'],
      name: json['name'],
      price: json['price'],
      qty: json['qty'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "img": img,
      "name": name,
      "qty": qty,
      "price": price,
    };
  }
}
