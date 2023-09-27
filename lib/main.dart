import 'package:flutter/material.dart';
import 'package:instagram_app/screens/login_screen.dart';
import 'package:instagram_app/screens/switch_account_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              headline4: TextStyle(
                  fontFamily: 'GB',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: Color(0xffF35383),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                textStyle: TextStyle(fontFamily: 'GB', fontSize: 16)),
          )),
      debugShowCheckedModeBanner: false,
      home: login_screen(),
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
