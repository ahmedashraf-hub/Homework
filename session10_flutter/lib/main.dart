import 'package:flutter/material.dart';

void main() {
  runApp(TravelDestination());
}

class TravelDestination extends StatelessWidget {
  const TravelDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Travel Destination'),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.favorite_border),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.share),
            ),
          ],
        ),
        body: ListView(
          // padding: EdgeInsets.all(10.0),
          children: [
            Image.asset('images/land.jpeg'),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0XFFF7F2F9),
                ),

                // height: 180,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Oeschinen Lake\nCampground',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0XFFF13E30),
                              size: 13,
                            ),
                            Text('Kandersteg, Switzerland'),
                          ],
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFEBED),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 4.0,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Color(0XFFF34333),
                              ),
                              SizedBox(width: 2),
                              Text(
                                '4.1',
                                style: TextStyle(color: Color(0XFFF34333)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0XFFDBD5E0),
                      indent: 15,
                      endIndent: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(999),
                                  color: Color(0xffe1e8fa),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.call,
                                    color: Color(0XFF52A2E4),
                                  ),
                                ),
                              ),
                              Text(
                                'CALL',
                                style: TextStyle(color: Color(0XFF52A2E4)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(999),
                                  color: Color(0xffe6eae9),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.near_me,
                                    color: Color(0XFF4daf50),
                                  ),
                                ),
                              ),
                              Text(
                                'ROUTE',
                                style: TextStyle(color: Color(0XFF4daf50)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(999),
                                  color: Color(0xffefddf3),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.share,
                                    color: Color(0XFF9123a3),
                                  ),
                                ),
                              ),
                              Text(
                                'SHARE',
                                style: TextStyle(color: Color(0XFF9123a3)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:  16.0),
              child: Align(
                alignment:
                    Alignment.centerLeft, 
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xff197ad8),
                  ),
                  // width: 200,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          right: 2,
                          bottom: 4,
                          top: 4,
                        ),
                        child: Icon(
                          Icons.info_outline_rounded,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 2,
                          right: 8,
                          bottom: 4,
                          top: 4,
                        ),
                        child: Text(
                          'About',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffeef7fe),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.local_offer_rounded,
                              color: Color(0xff197ad8),
                            ),
                          ),
                          Text(
                            '1,578m above sea level',
                            style: TextStyle(color: Color(0xff197ad8)),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Oeschinen Lake is about as blue and beautiful as a lake can be. Nestled in the Jungfrau-Aletsch-Bietschhorn UNESCO World Heritage Site of the Bernese Alps, it is home to magical scenery, azure blue waters, hiking trails, great fishing, and lots more. Visiting Oeschinensee is kind of a must if you are in the Bernese Oberland region of Switzerland over the summer, and we have all the details you need to explore it in the best way possible.',
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: () {},
                  backgroundColor: Color(0xffebddff),
                  child: const Icon(
                    Icons.bookmark_border,
                    color: Color(0xff705c9f),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
