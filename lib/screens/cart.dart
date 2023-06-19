import 'package:quickalert/quickalert.dart';
import 'package:shoping/helper/cart_helper.dart';
import 'package:shoping/model/cart_model.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

int counter = 0;

class _CartState extends State<Cart> {
  List<CartModel> cartItems = [];

  @override
  void ShowAlert() {
    QuickAlert.show(
        context: context,
        type: cartItems.isEmpty
            ? QuickAlertType.warning
            : QuickAlertType.success);
  }

  void initState() {
    getCartItems();
    super.initState();
  }

  Future getCartItems() async {
    cartItems = await CartHelper().getCartItems();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text(
            'Add Product',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("qty"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("price"),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 60,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    final cartItem = cartItems[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              cartItem.img,
                              height: 100,
                              width: 100,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(cartItem.name ?? ""),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("${cartItem.qty}"),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("${cartItem.price}"),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 60,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    final cart = CartModel(
                                      img: cartItem.img,
                                      name: cartItem.name,
                                      price: cartItem.price! - cartItem.price!,
                                      qty: -1,
                                    );
                                    await CartHelper().addToCart(cart);
                                    getCartItems();
                                  },
                                  child: const CircleAvatar(
                                    radius: 10,
                                    child: Center(
                                        child: Icon(
                                      Icons.remove,
                                      size: 15,
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                InkWell(
                                  onTap: () async {
                                    final cart = CartModel(
                                      img: cartItem.img,
                                      name: cartItem.name,
                                      price: cartItem.price! + cartItem.price!,
                                      qty: 1,
                                    );
                                    await CartHelper().addToCart(cart);
                                    getCartItems();
                                  },
                                  child: const CircleAvatar(
                                    radius: 10,
                                    child: Center(
                                        child: Icon(
                                      Icons.add,
                                      size: 15,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.shade300,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_shopping_cart_rounded,
                        color: Colors.pink.shade300,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 60,
                    width: 300,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.pink.shade300)),
                      onPressed: () {
                        setState(() {
                          ShowAlert();
                        });
                      },
                      child: const Text(
                        "Book now",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
