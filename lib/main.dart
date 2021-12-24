import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyRiveAnimation(),
    ));

class MyRiveAnimation extends StatelessWidget {
  const MyRiveAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const RiveAnimation.asset(
            'assets/joulukortti_2021.riv',
            fit: BoxFit.cover,
          ),
          Center(
            child: SizedBox(
              width: 500,
              child: Text(
                'Hyvää joulua ja onnellista uutta vuotta 2022!',
                textAlign: TextAlign.center,
                style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
