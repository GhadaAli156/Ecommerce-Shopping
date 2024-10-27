import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomSort extends StatelessWidget {
  const CustomSort({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'All Featured',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Sort'),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.arrow_up_arrow_down,
                  size: 16,
                )
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Filter'),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.filter_list_alt,
                  size: 16,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
