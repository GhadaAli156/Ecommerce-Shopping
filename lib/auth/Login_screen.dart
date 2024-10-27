import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/auth/forgot_screen.dart';
import 'package:shopping/auth/sign_up.dart';
import 'package:shopping/welcom_screen/welcom_screen.dart';
import '../constant/custom_continue_with.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100,),
            const Text('Welcome',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 35
            ),),
            const Text('Back!',style: TextStyle(
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
            const SizedBox(height: 10,),
            Align(
                alignment: Alignment.topRight,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotScreen(),));
                }, child: const Text('Forget Password?',style: TextStyle(color: Colors.pink),))),
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
                child: const Text('Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
              ),
            ),
            const SizedBox(height: 60,),
            const Center(child: Text('-OR Continue With-',style: TextStyle(color: Colors.grey),)),
            const SizedBox(height: 10,),
            const CustomContinueWith(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Create An Account'),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                }, child: const Text('Sign Up',style: TextStyle(
                  color: Colors.pink,
                ),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
