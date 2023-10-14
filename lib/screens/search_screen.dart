import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 8),
              height: 46,
              decoration: BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset('images/icon_search.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GB',
                              fontSize: 12),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    )),
                    Image.asset('images/icon_scan.png'),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 23,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: ListView.builder(
                itemCount: 15,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    //If you want to use the hight and width of the container instead of padding
                    // width: 60,
                    // height: 23,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xff272B40),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 4),
                        child: Text(
                          'All',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'GM',
                              fontSize: 12),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        )),
      ),
    );
  }
}
