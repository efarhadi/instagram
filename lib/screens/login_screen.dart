import 'package:flutter/material.dart';

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  FocusNode focusOnPassword = new FocusNode();
  FocusNode focusOnEmail = new FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusOnEmail.addListener(() {
      setState(() {});
    });
    focusOnPassword.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff323A99),
            Color(0xffF98BFC),
          ],
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [_getImageHeader(), _getLoginItems()],
      ),
    ));
  }

  Widget _getLoginItems() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sing in to ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Image(image: AssetImage('images/mood.png'))
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 44),
                  child: TextField(
                    focusNode: focusOnEmail,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 20,
                          color: focusOnEmail.hasFocus
                              ? Color(0xffF35383)
                              : Colors.white),
                      labelText: 'Email',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                            color: Color(
                              0xffF35383,
                            ),
                            width: 3),
                      ),
                      contentPadding: EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                            color: Color(
                              0xffC5C5C5,
                            ),
                            width: 3),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 44),
                  child: TextField(
                    focusNode: focusOnPassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 20,
                          color: focusOnPassword.hasFocus
                              ? Color(0xffF35383)
                              : Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                            color: Color(
                              0xffF35383,
                            ),
                            width: 3),
                      ),
                      contentPadding: EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                            color: Color(
                              0xffC5C5C5,
                            ),
                            width: 3),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _getImageHeader() {
    return Positioned(
      top: 45,
      bottom: 0,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('images/rocket.png'),
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    focusOnEmail.dispose();
    focusOnPassword.dispose();
    super.dispose();
  }
}
