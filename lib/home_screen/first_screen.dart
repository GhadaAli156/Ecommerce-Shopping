import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/home_screen/custom_list.dart';
import 'package:shopping/home_screen/custom_search.dart';
import 'package:shopping/home_screen/custom_sort.dart';
import 'package:shopping/home_screen/slider.dart';

import 'ProductCard.dart';

class FirstScreen extends StatelessWidget {
   FirstScreen({super.key});
  List listimg = [
    'assets/images/Component 52.png',
    'assets/images/Component 53.png',
    'assets/images/kids.png',
    'assets/images/Component 55.png',
    'assets/images/womans.png',
  ];
  List listTitle = ['Beauty', 'Fashion', 'Kids', 'mens', 'Womans'];
  final List<Map<String, String>> products = [
    {
      'image': 'assets/images/Mask Group.png',
      'title': 'Woman Printed Kurta',
      'description': 'Matte Gunmetal Black Full Rim Rectangle Sunglasses. ',
    },
    {
      'image': 'assets/images/Mask .png',
      'title': 'XRY by Hrithik Roshan',
      'description': 'Matte Gunmetal Black Full Rim Rectangle Sunglasses.',
    }
    // Add more items if needed
  ];
   final List<String> imgList = [
     'assets/images/Rectangle 48.png',
     'assets/images/Rectangle 48.png',
     'assets/images/Rectangle 48.png',
   ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: ListView(
        children: [
          Container(
            color: Colors.white,
            child: CustomSearch(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: CustomSort(),
          ),
          Container(
              width: 44,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listTitle.length,
                itemBuilder: (context, index) => CustomList(
                    image: listimg[index], title: listTitle[index]),
              )),
          CarouselSlider(
            options: CarouselOptions(
              height: 250.0,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: imgList.map((item) {
              return Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Colors.pinkAccent,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('50-60% OFF',),
                        subtitle: Text('Click to see more offers'),
                        textColor: Colors.white,
                      ),
                      Image.asset('assets/images/Rectangle 48.png'),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Card(
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text('Deal of the Day',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.white),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('View All',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                    Row(children: [
                      Icon(Icons.watch_later_outlined,color: Colors.white,),
                      SizedBox(width: 5,),
                      Text('22h 55m 20s remmining',style: TextStyle(color: Colors.white),)
                    ],)
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 250,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 columns
                  crossAxisSpacing: 10.0, // Spacing between columns
                  mainAxisSpacing: 10.0, // Spacing between rows
                  childAspectRatio: 0.75, // Adjust the aspect ratio as needed
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    image: products[index]['image']!,
                    title: products[index]['title']!,
                    description: products[index]['description']!,
                  );
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        radius: 40,
                        child: Image.asset('assets/images/Rectangle 56.png')),
                    Column(
                      children: [
                        Row(children: [
                          Text('Special Offers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Image.asset('assets/images/😱.png')
                        ],),
                        Text('We make sure you get '),
                        Text('the offer you need at best prices')
                      ],
                    )
                  ],
                ),
              ),
            ),
          )


        ],
      ),
    );
  }
}
