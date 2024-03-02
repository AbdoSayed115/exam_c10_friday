import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
          ),
          title: Row(
            children: [
              Image(
                width: 50,
                height: 50,
                image: AssetImage('assets/11.png'),),
              SizedBox(width: 5,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Row(
                      children: [
                        Text('Hello, Jade',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text('Ready to workout?',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
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
                SizedBox(height: 20,),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffF8F9FC),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.heart, color: Color(0xff253e85), size: 20,),
                                  SizedBox(width: 5,),
                                  Text('Heart Rate'),
                                ],
                              ),
                              SizedBox(width: 10,),
                              Row(
                                children: [
                                  Text('81', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  Text('BPM'),
                                ],
                              ),
                            ],
                          ),
                          Divider(color: Colors.grey, height: 50,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.list, color: Color(0xff253e85), size: 20,),
                                  SizedBox(width: 5,),
                                  Text('To-do'),
                                ],
                              ),
                              SizedBox(width: 10,),
                              Row(
                                children: [
                                  Text('32,5', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  Text('%'),
                                ],
                              ),
                            ],
                          ),
                          Divider(color: Colors.grey, height: 50,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.fire, color: Color(0xff253e85), size: 20,),
                                  SizedBox(width: 5,),
                                  Text('Calo'),
                                ],
                              ),
                              SizedBox(width: 10,),
                              Row(
                                children: [
                                  Text('1000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  Text('Cal'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Workout Programs', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  ],
                ),
                TabBar(
                  indicatorColor: Colors.black,
                  dividerColor: Colors.white,
                  labelColor: Colors.black,
                  tabs: [
                    SizedBox(
                      width: 150,
                      child: Tab(child: Text("All Type",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Tab(child: Text("Full body",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Tab(child: Text("Upper",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Tab(child: Text("Lower",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.8,
                  child: TabBarView(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Image(image: AssetImage('assets/13.png'));
                            }
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
