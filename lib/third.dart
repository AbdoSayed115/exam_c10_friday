import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {

  List<String> items = [
    "Discover",
    "News",
    "Most Viewed",
    "Saved",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/14.png'),),
              SizedBox(width: 5,),
              Text('AliceCare',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        padding: EdgeInsets.zero,
        height: 80,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined, size: 30, color: Colors.grey[600],),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.category, size: 30, color: Colors.deepPurple,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.messenger_outline, size: 30,color: Colors.grey[600],),label: ""),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: InputBorder.none,
                      hintText: "Articles, Video, Audio and More,...",
                      hintStyle: TextStyle(fontSize: 15),
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: double.infinity,
                height: 80,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.all(5),
                              width: 99,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffF4EBFF),
                                borderRadius: BorderRadius.circular(20),
                                border: current == index
                                    ? Border.all(
                                    color: Colors.deepPurpleAccent,
                                    width: 1.1)
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: current == index
                                        ? Color(0xff6941C6)
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hot topics',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: (){

                            },
                            child: Text('See all',
                              style: TextStyle(color: Color(0xff6941C6), fontSize: 16),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Color(0xff6941C6),)
                        ],
                      ),
                    ],
                  ),
                  CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Transform.scale(
                          scale: 1.25,
                            child: Image(image: AssetImage('assets/15.png'))),
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      autoPlay: true,
                      enlargeFactor: 50,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Get Tips',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Transform.scale(
                      scale: 1.15,
                      child: Image(image: AssetImage('assets/17.png'))),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Cycle Phases and Period',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: (){

                            },
                            child: Text('See all',
                              style: TextStyle(color: Color(0xff6941C6), fontSize: 16),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Color(0xff6941C6),)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
