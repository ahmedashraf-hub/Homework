import 'package:flutter/material.dart';

class Weatherinfobody extends StatelessWidget {
  const Weatherinfobody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Alexandria',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text('updated at 23:46', style: TextStyle(fontSize: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/cloudy.png'),
                Text(
                  '17',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Column(
                  children: [
                    Text('Maxtemp: 24', style: TextStyle(fontSize: 15)),
                    Text('Minitemp: 16', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ],
            ),
            Text(
              'Ligh Rain',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
