import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Hyvää joulua',
                    textAlign: TextAlign.center,
                    textStyle: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                      fontSize: 40,
                      color: Colors.red,
                    )),
                  ),
                  TyperAnimatedText(
                    'ja',
                    textAlign: TextAlign.center,
                    textStyle: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                      fontSize: 40,
                      color: Colors.red,
                    )),
                  ),
                  TyperAnimatedText(
                    'onnellista uutta vuotta 2022!',
                    textAlign: TextAlign.center,
                    textStyle: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                      fontSize: 40,
                      color: Colors.red,
                    )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
