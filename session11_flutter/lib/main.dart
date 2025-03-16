import 'package:flutter/material.dart';

void main() {
  runApp(InteractiveUiDemo());
}

class InteractiveUiDemo extends StatelessWidget {
  const InteractiveUiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(appBar: AppBar(title: Text('Interactive Ui Demo'))),
    );
  }
}
