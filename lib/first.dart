import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/second.dart';
import 'package:untitled/third.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image(image: AssetImage('assets/bar.png'),),
        title: Text('Moody',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Transform.scale(
                scale: 1.1,
                child: Image(image: AssetImage('assets/12.png'),))
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        padding: EdgeInsets.zero,
        height: 80,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 30,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person, size: 30,),label: ""),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              SizedBox(height: 24,),
              Row(
                children: [
                  Text('Hello, ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('Sara Rose',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Text('How are you feeling today ?',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image(image: AssetImage('assets/1.png')),
                      Text('Love',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/2.png')),
                      Text('Cool',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/3.png')),
                      Text('Happy',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/4.png')),
                      Text('Sad',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Feature',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Third()));
                          },
                          child: Text('See more',
                            style: TextStyle(color: Color(0xff027A48), fontSize: 16),
                          ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Color(0xff027A48),)
                    ],
                  ),
                ],
              ),
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                Transform.scale(
                    scale: 1.25,
                    child: Image(image: AssetImage('assets/6.png'))),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Color(0xffECFDF3),
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       Column(
                    //         children: [
                    //           Row(
                    //             children: [
                    //               Text('Positive vibes',
                    //                 style: TextStyle(fontSize: 20),
                    //               ),
                    //             ],
                    //           ),
                    //           SizedBox(height: 8,),
                    //           Row(
                    //             children: [
                    //               Text('Boost your mood with positive vibes',
                    //                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    //               ),
                    //             ],
                    //           ),
                    //           SizedBox(height: 10,),
                    //           Row(
                    //             children: [
                    //               Image(image: AssetImage('assets/5.png')),
                    //               SizedBox(width: 5,),
                    //               Text('10 mins',
                    //                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    //               ),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //       Image(image: AssetImage('assets/slide.png')),
                    //     ],
                    //   ),
                    // ),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    enlargeFactor: 50,
                  ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Exercise',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Second()));
                        },
                        child: Text('See more',
                          style: TextStyle(color: Color(0xff027A48), fontSize: 16),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Color(0xff027A48),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF9F5FF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/7.png')),
                        SizedBox(width: 5,),
                        Text('Relaxation',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFDF2FA),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/8.png')),
                        SizedBox(width: 5,),
                        Text('Meditation',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFFFAF5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/9.png')),
                        SizedBox(width: 5,),
                        Text('Beathing',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF0F9FF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/10.png')),
                        SizedBox(width: 5,),
                        Text('Yoga',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
