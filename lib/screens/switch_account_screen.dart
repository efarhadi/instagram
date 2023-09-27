import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:instagram_app/main.dart';

class Swithch_account_Screen extends StatelessWidget {
  const Swithch_account_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/switch_account_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 215,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Container(
                        width: 340,
                        height: 352,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2)
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Image(
                              image: AssetImage('images/profile.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Esmaeil Farhadi',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            SizedBox(
                              width: 129,
                              height: 46,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Confirm',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Text(
                              'switch account',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 132, bottom: 63),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                      fontFamily: 'GB',
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 16),
                ),
                Text(
                  ' Sing up',
                  style: TextStyle(
                    fontFamily: 'GB',
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
