import 'package:flutter/material.dart';
class CustomContinueWith extends StatelessWidget {
  const CustomContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const SizedBox(width: 85,),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset('assets/images/Frame 4.png'),
          ),
          const SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset('assets/images/apple 1.png'),
          ),
          const SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset('assets/images/facebook-app-symbol 1.png'),
          )
        ],
      ),
    );
  }
}
