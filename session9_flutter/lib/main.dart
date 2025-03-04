import 'package:flutter/material.dart';
import 'package:session9_flutter/latter_class.dart';
import 'package:session9_flutter/num_later_class.dart';
import 'package:session9_flutter/numbers_class.dart';

void main() {
  runApp(FancySection());
}

class FancySection extends StatelessWidget {
  FancySection({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Color(0XFFBBDEFA),
            height: 350,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LatterClass(later: 'A', color: Color(0XFFee534f)),
                    LatterClass(later: 'B', color: Color(0XFFFFA827)),
                    LatterClass(later: 'C', color: Color(0XFFFDD734)),
                  ],
                ),
                Container(
                  
                  height: 150,
                  width: 250,
                  color: Color(0xffc5cae8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Fancy Section',
                        style: TextStyle(
                          color: Color(0XFF3D4CB2),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NumbersClass(number: '1', color: Color(0xff7e57c2)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: NumbersClass(number: '2', color: Color(0xffaa47bc)),
                          ),
                          NumbersClass(number: '3', color: Color(0XFF9576CC)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NumbersClass(number: '4', color: Color(0XFFb968c7)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: NumbersClass(number: '5', color: Color(0XFFB39EDA)),
                          ),
                          NumbersClass(number: '6', color: Color(0XFFCF93D9)),
                        ],
                      ),
                    ],
                  ),
                ),

                Text(
                  'Info Cards',
                  style: TextStyle(
                    color: Color(0XFF3D4CB2),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NumLaterClass(
                      num: '23',
                      text: 'Active',
                      fontColor: Color(0XFF20A49A),
                    ),
                    NumLaterClass(
                      num: '15',
                      text: 'Pending',
                      fontColor: Color(0XFFFBB719),
                    ),
                    NumLaterClass(
                      num: '7',
                      text: 'Completed',
                      fontColor: Color(0XFF70B172),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
