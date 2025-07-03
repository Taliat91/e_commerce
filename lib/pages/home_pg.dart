// ignore: unused_import
import 'package:e_commerce/pages/google_nav_bar.dart';
import 'package:e_commerce/pages/product_display_pg.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  List<Color> Clrs = [
    Color.fromARGB(255, 246, 111, 58),
    Color.fromARGB(255, 36, 131, 233),
    // Color.fromARGB(255, 63, 208, 143),
  ];

  //List of category
  final List<Categories> category = [
    Categories(imagePath: "assets/image/apple_smart_watch.png"),
    Categories(imagePath: "assets/image/Tshirt.png"),
    Categories(imagePath: "assets/image/headphone.png"),
    Categories(imagePath: "assets/image/sneakers.png"),
    Categories(imagePath: "assets/image/watch04.png"),
  ];

  final List<ProductItem> myproducts = [
    ProductItem(
        imagePath: 'assets/image/apple_smart_watch.png',
        title: 'Apple Smart Watch',
        price: 45000,
        oldPrice: 55000,
        favorite: Icons.favorite),
    ProductItem(
        imagePath: 'assets/image/smart_watch2.png',
        title: 'Redmi Smart Watch',
        price: 45000,
        oldPrice: 55000,
        favorite: Icons.favorite),
    ProductItem(
        imagePath: 'assets/image/watch03.png',
        title: 'Smart Watch',
        price: 45000,
        oldPrice: 55000,
        favorite: Icons.favorite),
    ProductItem(
        imagePath: 'assets/image/watch04.png',
        title: 'Smart Watch',
        price: 45000,
        oldPrice: 55000,
        favorite: Icons.favorite),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.menu)),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.search)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Hello Taliat',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Lets shop something!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  for (int i = 0; i < 2; i++)
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.only(left: 10),
                      height: MediaQuery.of(context).size.height / 8.5,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Clrs[i],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.,
                            children: [
                              Text(
                                '20% OFF DURING THE\nWEEKEND',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),

                              Image.asset(
                                'assets/image/handbag.png',
                                height: 150,
                                width: 150,
                              ),

                              // Image.asset(imageList [i],
                              // height: 100,
                              // width: 100,)
                            ],
                          ),
                          Container(
                            // height: 9,
                            width: 100,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Get Now',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top  Categories',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 400,
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 60,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[400],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          category[index].imagePath,
                          fit: BoxFit.cover,
                        )),
                  );
                },
              ),
            ),
            SizedBox(
              height: 150,
              child: GridView.builder(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                    // mainAxisSpacing: 20,
                    // crossAxisSpacing: 15,
                  ),
                  // scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  itemCount: myproducts.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.grey[200],
                      elevation: 5,
                      // width: double.infinity,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '50% OFF',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),

                              // ignore: sized_box_for_whitespace
                              Container(
                                margin: EdgeInsets.all(8),
                                color: Colors.grey[200],
                                width: 20,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDisplayPage()),
                              );
                            },
                            child: Image.asset(
                              myproducts[index].imagePath,
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),

                          // SizedBox(height: 1
                          Column(
                            children: [
                              Text(
                                myproducts[index].title,
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      // ignore: unnecessary_string_escapes
                                      '\₦${myproducts[index].price}',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    // ignore: unnecessary_string_escapes
                                    '\₦${myproducts[index].oldPrice}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ]),
        )));
  }
}

//category class
class Categories {
  final String imagePath;

  // final String text;

  Categories({required this.imagePath});
}

// ProductItems class
class ProductItem {
  final String imagePath;
  final String title;
  final num price;
  final num oldPrice;
  final IconData favorite;

  ProductItem({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.favorite,
  });
}
