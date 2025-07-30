import 'package:e_commerce/pages/product_display_pg.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> clrs = [
    Color.fromARGB(255, 246, 111, 58),
    Color.fromARGB(255, 36, 131, 233),
  ];

  final List<Categories> category = [
    Categories(imagePath: "assets/image/apple_smart_watch.png"),
    Categories(imagePath: "assets/image/Tshirt.png"),
    Categories(imagePath: "assets/image/headphone.png"),
    Categories(imagePath: "assets/image/sneakers.png"),
    Categories(imagePath: "assets/image/watch04.png"),
    Categories(imagePath: "assets/image/smart_watch2.png"),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconBox(Icons.menu),
                    iconBox(Icons.search),
                  ],
                ),
                const SizedBox(height: 16),

                Text(
                  'Hello Taliat',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Let\'s shop something!',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),

                // Promo Banners
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: clrs.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                          color: clrs[index],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    '20% OFF\nWEEKEND DEALS',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Image.asset(
                                  'assets/image/handbag.png',
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.contain,
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "Get Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: clrs[index]),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),

                // Top Categories
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top Categories',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('See All',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                const SizedBox(height: 10),

                // Scrollable Top Categories
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(category.length, (index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          category[index].imagePath,
                          width: 50,
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 16),

                // Product Grid
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: myproducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8, 
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            // Discount & Favorite
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('50% OFF',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                Icon(Icons.favorite,
                                    size: 18, color: Colors.red),
                              ],
                            ),
                            const SizedBox(height: 10),

                            // Product Image grid
                            Expanded(
                              child: Center(
                                child: GestureDetector(
                                  onDoubleTap: () {
                                     Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                    return ProductDisplayPage();
                                     }));
                                  },
                                  child: Image.asset(
                                    myproducts[index].imagePath,
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),

                            // Title
                            Text(
                              myproducts[index].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(height: 6),

                            // Price & Old Price
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '₦${myproducts[index].price}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  '₦${myproducts[index].oldPrice}',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget iconBox(IconData icon) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon),
    );
  }
}

class Categories {
  final String imagePath;
  Categories({required this.imagePath});
}

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
