import 'package:flutter/material.dart';
import 'package:instagram_app/screens/switch_account_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Swithch_account_Screen(),
    );
  }
}

//splash Screen
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/pattern1.png'),
              repeat: ImageRepeat.repeatY),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Image(
                    image: AssetImage('images/logo_splash.png'),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 32,
                child: Column(
                  children: [
                    Text('Powered by',
                        style: TextStyle(color: Colors.white.withOpacity(0.3))),
                    Text('NoroNet Group',
                        style: TextStyle(color: Color(0xff55B9F7))),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
