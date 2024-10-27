import 'package:flutter/material.dart';
class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100,),
            const Text('Forgot',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 35
            ),),
            const Text('Password?',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 35
            ),),
            const SizedBox(height: 50,),
            Container(
              color: Colors.grey[100],
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Enter your Email Address',
                    prefixIcon: Icon(Icons.email,size: 30,),
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()
                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Text('* We will send you a message to set or reset your new password',maxLines: 2,style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 40,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(4)),
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text('Submit',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
            ),
          ],
        ),
      )
    );
  }
}
