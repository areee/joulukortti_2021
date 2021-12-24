import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyRiveAnimation(),
    ));

class MyRiveAnimation extends StatelessWidget {
  const MyRiveAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.asset(
          'assets/joulukortti-animaatio.riv',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
