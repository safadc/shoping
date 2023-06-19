import 'dart:convert';

import 'package:shoping/model/cart_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartHelper {
  Future addToCart(CartModel cart) async {
    final prefs = await SharedPreferences.getInstance();
    final list = await getCartItems();
    for (var i = 0; i < list.length; i++) {
      var element = list[i];
      if (element.name == cart.name) {
        final newQty = (element.qty ?? 0) + (cart.qty ?? 0);
        if (newQty == 0) {
          list.remove(element);
          prefs.remove("cartItems");
          prefs.setString(
              "cartItems", jsonEncode(list.map((e) => e.toJson()).toList()));
          return;
        }
        list[i].qty = newQty;
        prefs.remove("cartItems");
        prefs.setString(
            "cartItems", jsonEncode(list.map((e) => e.toJson()).toList()));
        return;
      }
    }
    list.add(cart);
    prefs.setString("cartItems", jsonEncode(list));
  }

  Future<List<CartModel>> getCartItems() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString("cartItems");
    if (data == null) return [];
    final list = jsonDecode(data);
    return (list as List).map((e) => CartModel.fromJson(e)).toList();
  }
}
