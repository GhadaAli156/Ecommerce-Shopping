import 'package:flutter/material.dart';
import 'package:shopping/home_screen/cart.dart';
import 'package:shopping/home_screen/similar_product_card.dart';
import 'package:shopping/home_screen/size_button.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
              child: Image.asset('assets/images/Mask .png',width: double.infinity,)
          ),
          const SizedBox(height: 10),
          Container(
            width: 1,
            height: 55,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizeButton(size: '6 UK'),
                SizeButton(size: '7 UK', isSelected: true),
                SizeButton(size: '8 UK'),
                SizeButton(size: '9 UK'),
                SizeButton(size: '10 UK'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Nike Sneakers',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Vision Alta Men\'s Shoes Size (All Colours)',
            style: TextStyle(color: Colors.grey),
          ),
          const Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 20),
              Icon(Icons.star, color: Colors.amber, size: 20),
              Icon(Icons.star, color: Colors.amber, size: 20),
              Icon(Icons.star, color: Colors.amber, size: 20),
              Icon(Icons.star_half, color: Colors.amber, size: 20),
              SizedBox(width: 5),
              Text('6,890 ratings'),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            children: [
              Text(
                '₹11,500 ',
                style: TextStyle(
                  fontSize: 18,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
              Text(
                ' ₹7,500',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Text(
                '50% Off',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Product Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Perhaps the most iconic sneaker of all-time, this original '
                '“Chicago” colorway is the cornerstone to any sneaker collection. '
                'Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, '
                'becoming the most famous colorway of the Air Jordan 1.',
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingBagScreen(),));
                    },
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text('Go to cart'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.payment),
                  label: const Text('Buy Now'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Delivery Information
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.pink[100],
            child: const Row(
              children: [
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1 within Hour',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Delivery in 1 within Hour',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          // Action Buttons (View Similar, Add to Compare)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.visibility),
                label: Text('View Similar'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.compare_arrows),
                label: Text('Add to Compare'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  foregroundColor: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          // Similar Products (GridView)
          Text(
            'Similar To',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.8,
            ),
            itemCount: 4, // Adjust the number of similar products
            itemBuilder: (context, index) {
              return SimilarProductCard(
                title: 'Nike Sneakers',
                price: '₹7,500',
                image: 'assets/images/Mask Group.png',
              );
            },
          ),
        ],
      ),
    );
  }
}



