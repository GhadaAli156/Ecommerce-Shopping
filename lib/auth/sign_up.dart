import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/auth/Login_screen.dart';
import 'package:shopping/constant/custom_continue_with.dart';

import '../welcom_screen/welcom_screen.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100,),
              const Text('Create an',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 35
              ),),
              const Text('account',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 35
              ),),
              const SizedBox(height: 50,),
              Container(
                color: Colors.grey[100],
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Username or Email',
                      prefixIcon: Icon(Icons.person,size: 30,),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder()
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                color: Colors.grey[100],
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock,size: 30,),
                      suffixIcon: Icon(CupertinoIcons.eye),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder()
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                color: Colors.grey[100],
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock,size: 30,),
                      suffixIcon: Icon(CupertinoIcons.eye),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder()
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text('By clicking the ',style: TextStyle(color: Colors.grey),),
                  Text('Register',style: TextStyle(color: Colors.pink),),
                  Text(' button, you agree',style: TextStyle(color: Colors.grey),)
                ],
              ),
              const Text('to the public offer',style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomScreen(),));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(4)),
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text('Create Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                ),
              ),
              const SizedBox(height: 50,),
              const Center(child: Text('-OR Continue With-',style: TextStyle(color: Colors.grey),)),
              const SizedBox(height: 10,),
              const CustomContinueWith(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('I Already Have an Account'),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                  }, child: const Text('Login',style: TextStyle(
                    color: Colors.pink,
                  ),))
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
