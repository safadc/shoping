import 'package:shoping/helper/cart_helper.dart';
import 'package:shoping/model/cart_model.dart';
import 'package:shoping/screens/cart.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final BuildContext context;

  const DetailsPage(this.img, this.title, this.price, this.context,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            img,
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          IconButton(
            padding: const EdgeInsets.only(left: 10, top: 30),
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close),
            iconSize: 30,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(children: [
                Expanded(
                    child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("ILLUM"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            "\$ $price",
                            style: const TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Size"),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "50g",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              )
                            ],
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        thickness: 1.5,
                      ),
                      ListTile(
                        leading: const Text(
                          "Details",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.black,
                            )),
                      ),
                      const Divider(
                        thickness: 1.5,
                      ),
                      ListTile(
                        leading: const Text("Shipping & Returns"),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          color: Colors.black,
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                      )
                    ],
                  ),
                )),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1),
                          child: ElevatedButton(
                            onPressed: () async {
                              final cart = CartModel(
                                img: img,
                                name: title,
                                qty: 1,
                                price: double.tryParse(price) ?? 0,
                              );
                              await CartHelper().addToCart(cart);
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Cart();
                              }));
                            },
                            // style: ElevatedButton.styleFrom(
                            //     backgroundColor: Colors.pink.shade100,
                            // shape: const StadiumBorder(),
                            // padding: EdgeInsets.symmetric(
                            //     horizontal:
                            //         MediaQuery.of(context).size.width / 4,
                            //     vertical:
                            //         MediaQuery.of(context).size.height)),
                            // style: ButtonStyle(

                            //   shape: MaterialStateProperty.all<
                            //           RoundedRectangleBorder>(
                            //       RoundedRectangleBorder(
                            //           borderRadius: BorderRadius.circular(30))),
                            //   backgroundColor: MaterialStateProperty.all<Color>(
                            //     Colors.pink.shade300,
                            //   ),
                            // ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.pink.shade300),
                                shape: MaterialStateProperty.all<StadiumBorder>(
                                  const StadiumBorder(),
                                )),
                            child: const Text(
                              "Add to Cart",
                              style: TextStyle(
                                  fontSize: 30,
                                  letterSpacing: 1,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ]),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
