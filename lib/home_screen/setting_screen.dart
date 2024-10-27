import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: 50,
                  child: Icon(Icons.person,size: 70,color: Colors.white,),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          _buildSectionTitle('Personal Details'),
          _buildTextField('Email Address', 'aashif@gmail.com'),
          _buildPasswordField(),
          Divider(),
          _buildSectionTitle('Business Address Details'),
          _buildTextField('PinCode', '450116'),
          _buildTextField('Address', '216 St Paul\'s Rd'),
          _buildTextField('City', 'London'),
          _buildTextField('State', 'N1 2LL'),
          _buildTextField('Country', 'United Kingdom'),
          Divider(),
          _buildSectionTitle('Bank Account Details'),
          _buildTextField('Bank Account Number', '204356XXXXX'),
          _buildTextField('Account Holder`s Name', 'Abhiraj Sisodiya'),
          _buildTextField('IFSC Code', 'SBIN00428'),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(4)),
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text('Save',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTextField(String label, String placeholder) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        initialValue: placeholder,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          TextFormField(
            obscureText: true,
            initialValue: '********',
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {},
              child: Text('Change Password', style: TextStyle(color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
