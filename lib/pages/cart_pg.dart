import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
   // ignore: prefer_const_constructors_in_immutables
   CartPage({super.key});
   
    final List<CartItem> cartItems = [
    CartItem(title: 'Apple W-series 6', price: 45000, size: '35', imagePath: 'assets/image/apple_smart_watch.png'),
    CartItem(title: 'Headphone', price: 45000, size: 'M', imagePath: 'assets/image/headphone.png'),
    CartItem(title: ' Tshirt', price: 45000, size: 'S', imagePath: 'assets/image/Tshirt.png'),
    CartItem(title: 'Nike Sneakers', price: 45000, size: '42', imagePath: 'assets/image/sneakers.png'),
  ];

  // final int total = cartItems.fold(0, (sum, item) => sum + item.price);


  @override
  Widget build(BuildContext context) {
     final int total = cartItems.fold(0, (sum, item) => sum + item.price);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('My cart', style: TextStyle(color: Colors.black)),
        leading: BackButton(color: Colors.black),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                var item = cartItems[index];
                return CartItemWidget(item: item);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total', style: TextStyle(fontSize: 18)),
                    Text('₦ $total',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange)),
                  ],
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text('Buy Now', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    
  }
}



class CartItem {
  final String title;
  final int price;
  final String size;
  final String imagePath;

  CartItem({required this.title, required this.price, required this.size, required this.imagePath});
}

class CartItemWidget extends StatelessWidget {
  final CartItem item;

  // ignore: use_super_parameters
  const CartItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),

              ),
              
              child: Image.asset(item.imagePath,
              fit: BoxFit.contain, 
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Size: ${item.size}', style: TextStyle(color: Colors.grey[600])),
                  Text('₦ ${item.price}', style: TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove, color: Colors.deepOrange),
                  onPressed: () {},
                ),
                Text('1'),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.deepOrange),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}