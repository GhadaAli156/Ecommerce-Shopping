import 'package:flutter/material.dart';
class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            Icons.mic,
            color: Colors.grey,
          ),
          label: Text('Search any Product...'),
          labelStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey))),
    );
  }
}
