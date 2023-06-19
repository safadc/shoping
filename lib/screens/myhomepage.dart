import 'package:shoping/screens/details.dart';
import 'package:flutter/material.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.add,
              size: 35,
              color: Colors.black,
            ),
          ),
          actions: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.all(10),
              child: const Icon(
                Icons.search_outlined,
                size: 35,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
        body: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Shop",
                  style: TextStyle(fontSize: 26, letterSpacing: 1),
                ),
                Text(
                  "Application",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button("Home Decore", isSelected: true),
                  button(
                    "Bath & Body",
                  ),
                  button(
                    "beauty",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 20,
                        spreadRadius: 3,
                      )
                    ]),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildColumnTop("Candle", isSelected: true),
                        buildColumnTop("vases"),
                        buildColumnTop("floral"),
                        buildColumnTop("bins"),
                        buildColumnTop("Decor")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          buildcolumnRow(
                              "https://lh5.googleusercontent.com/p/AF1QipNdonyqqNq84LDnWR89rCz2pRG-nN0YIrrkHC5w",
                              "Elemental tin candle",
                              "29",
                              context),
                          buildcolumnRow(
                            "https://cdn.shopify.com/s/files/1/1101/2590/products/candles_4.jpg?v=1633365931",
                            "Summer candle",
                            "34",
                            context,
                          ),
                          buildcolumnRow(
                            "https://media.istockphoto.com/id/656803652/photo/aromatherapy-candles-colorfull-in-a-market.jpg?s=612x612&w=0&k=20&c=UBYCrEcfs7qo9IgOuVG8Xi-xNeadFClPOBuiUYu6xiU=",
                            "winter candle",
                            "45",
                            context,
                          ),
                          buildcolumnRow(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1q8kvqmFtMUXLB6yX41-5Bh9igYijzOhXOA&usqp=CAU",
                            "dummy candle",
                            "50",
                            context,
                          ),
                          buildcolumnRow(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYKeP6KO-clgABjGnWtk25URo72x_4Huntdg&usqp=CAU",
                            "normal candle",
                            "65",
                            context,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      height: 5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 5,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: const Row(
                        children: [
                          Text(
                            "Holiday Special",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            "View All",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              buildbottom(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-P60If_PfNUAvE88gLsu_js_VPwIg3z8dZw&usqp=CAU",
                                "DIY Milk and Honey \n Floral Bath Soak",
                                "oz",
                                "25",
                              ),
                              buildbottom(
                                  "https://cdn.shopify.com/s/files/1/0056/7971/0306/products/SootheRose_CoconutMilkBathSoak-KleiBeautycopy.jpg?v=1660233727&width=320",
                                  "Klei Uplift Citrus \n Lavender Herbal ",
                                  "uz",
                                  "46"),
                              buildbottom(
                                  "https://cdn.shopify.com/s/files/1/0438/7687/6452/products/20220514_092452-01.jpg?v=1652698498&width=533",
                                  "Bath Soaks \n Moonlight at Midnight ",
                                  "bc",
                                  "76")
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector buildcolumnRow(
      String img, String title, String price, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailsPage(img, title, price, context);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 220,
              width: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "\$ $price",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Column buildColumnTop(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(color: isSelected ? Colors.black : Colors.grey),
        ),
        const SizedBox(
          height: 5,
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          )
      ],
    );
  }

  ElevatedButton button(String text, {bool isSelected = false}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: isSelected ? Colors.pinkAccent : Colors.grey[300],
        ),
        onPressed: () {
          // ignore: avoid_print
          print("button ");
        },
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black),
        ));
  }

  Container buildbottom(String img, String title, String text, String price) {
    return Container(
      height: 250,
      // width: 200,
      margin: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: SizedBox(
              height: 200,
              width: 100,
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 9),
                ),
                Text(text),
                Spacer(),
                Text(
                  "\$ $price",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
