import 'package:flutter/material.dart';
import 'package:shopping/home_screen/first_screen.dart';
import 'package:shopping/home_screen/home_screen.dart';
class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/welcom.jpg',),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('You want',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
            const Text('Authentic, here you go!',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
            const Text('you go!',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
            const SizedBox(height: 15,),
            const Text('Find it here, buy it now!',style: TextStyle(color: Colors.white),),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(4)),
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text('Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                    ),),
                ),
              ),
            ),
            const SizedBox(height: 60,)
          ],
        ),
      ),
    );
  }
}
