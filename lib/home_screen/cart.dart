import 'package:flutter/material.dart';

class ShoppingBagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Bag'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 120,
                  child: Image.asset('assets/images/Mask .png', fit: BoxFit.fill),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nike Sneakers',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      const Text('Checked Single-Breasted Blazer', style: TextStyle(color: Colors.grey)),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          DropdownButton<String>(
                            value: '42',
                            items: <String>['42', '44', '46']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text('Size $value'),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {},
                          ),
                          const SizedBox(width: 16),
                          DropdownButton<String>(
                            value: '1',
                            items: <String>['1', '2', '3']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text('Qty $value'),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Delivery by 10 May 2XXX',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text('Apply Coupons'),
              trailing: TextButton(
                onPressed: () {},
                child: Text(
                  'Select',
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ),
            const Divider(),
            _buildPaymentDetailRow('Order Amounts', '₹ 7,000.00'),
            _buildPaymentDetailRow(
              'Convenience',
              'Know More',
              isLink: true,
              applyCoupon: 'Apply Coupon',
            ),
            _buildPaymentDetailRow('Delivery Fee', 'Free'),
            const Divider(),
            _buildPaymentDetailRow('Order Total', '₹ 7,000.00', fontSize: 18),
            _buildPaymentDetailRow('EMI Available', 'Details', isLink: true),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '₹ 7,000.00',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 55,
                  width: 200,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(4)),
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: const Text('Proceed to Payment',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                        ),),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentDetailRow(String label, String value, {bool isLink = false, String? applyCoupon, double fontSize = 16}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: fontSize)),
          Row(
            children: [
              if (isLink) GestureDetector(
                onTap: () {
                },
                child: Text(
                  value,
                  style: TextStyle(color: Colors.pink, fontSize: fontSize),
                ),
              ) else Text(value, style: TextStyle(fontSize: fontSize)),
              if (applyCoupon != null) const SizedBox(width: 10),
              if (applyCoupon != null) GestureDetector(
                onTap: () {
                  // Apply coupon action
                },
                child: Text(
                  applyCoupon,
                  style: const TextStyle(color: Colors.pink),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

