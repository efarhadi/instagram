import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1C1F2E),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/pattern1.png'),
              repeat: ImageRepeat.repeatY),
        ),
        child: Center(
          child: Text(
            'arash',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
