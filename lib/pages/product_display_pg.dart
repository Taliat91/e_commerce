import 'package:e_commerce/pages/home_pg.dart';
import 'package:flutter/material.dart';

class ProductDisplayPage extends StatefulWidget {
  const ProductDisplayPage({super.key});

  @override
  State<ProductDisplayPage> createState() => _ProductDisplayPageState();
}

class _ProductDisplayPageState extends State<ProductDisplayPage> {
    final List<int> sizes = [35, 36, 37, 38, 39, 40];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Product Image
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                    onTap: () {
                    Navigator.push
                         (context, MaterialPageRoute(builder: (context) => HomePage()),
                         );
                       },   
                    child: Icon(Icons.arrow_back)),
                  ),
                  Image.asset(
                    "assets/image/apple_smart_watch.png", 
                    height: 150,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(backgroundColor: Colors.white, radius: 10),
                      SizedBox(width: 10),
                      CircleAvatar(
                      backgroundColor: Colors.red, radius: 10, ),
                       SizedBox(width: 10),
                      CircleAvatar(backgroundColor: Colors.white, radius: 10, 
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Product Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Apple Watch Series 6', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Row(
                    children: List.generate(5, (_) => const Icon(Icons.star, color: Colors.amber, size: 20)),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text('₦ 45,000', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(width: 10),
                      Text('₦ 56,000', style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey)),
                      Spacer(),
                      Text('Available in stock', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  const Text(
                    'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
                    style: TextStyle(color: Colors.black87),
                  ),
                  const SizedBox(height: 20),

                  // Sizes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: sizes.map((size) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: size == 37 ? Colors.orange[200] : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Text(size.toString()),
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 20),

                  // Add to Cart Button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {},
                      child: const Text('Add to cart', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), 
    );
  }
}