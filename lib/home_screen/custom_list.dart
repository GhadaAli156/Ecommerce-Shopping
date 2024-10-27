import 'package:flutter/material.dart';
class CustomList extends StatelessWidget {
  final String image;
  final String title;
  const CustomList({super.key,required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Image.asset(image,),
          ),
           Text(title)
        ],
      ),
    );
  }
}
