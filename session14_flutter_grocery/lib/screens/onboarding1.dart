import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0XFFE5E5E5),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0XFFFEC54B)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          Expanded(child: Image.asset('assets/images/image 6.png',width: double.infinity,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Welcome to Fresh Fruits',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Grocery application',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor',
              style: TextStyle(fontSize: 14),
            ),
          ),
          // Slider(value: , onChanged: onChanged),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 28,vertical: 16),
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Color(0XFFFEC54B),
              borderRadius: BorderRadius.circular(32),
            ),
            width: double.infinity,
            child: Center(
              child: Text(
                'Next',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
