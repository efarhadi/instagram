import 'dart:ui';
import 'package:flutter/material.dart';

class ShareBottomSheet extends StatelessWidget {
  ShareBottomSheet({this.controller, Key? key}) : super(key: key);
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromRGBO(255, 255, 255, 0.2),
                  Color.fromRGBO(255, 255, 255, 0.5),
                ]),
          ),
          child: _getContent(),
        ),
      ),
    );
  }

  Widget _getContent() {
    return Stack(
      children: [
        CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 67,
                    margin: EdgeInsets.only(top: 10, bottom: 22),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GB',
                          fontSize: 20,
                        ),
                      ),
                      Image.asset('images/icon_share_bottomsheet.png')
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 32, top: 32),
                    height: 46,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset('images/icon_search.png'),
                          SizedBox(
                            width: 8,
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
                          ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _getItemGrid();
                },
                childCount: 60,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 106),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 100))
          ],
        ),
        Positioned(
          bottom: 47,
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 13),
              child: Text(
                'Send',
                style: TextStyle(fontFamily: 'GB', fontSize: 16),
              ),
            ),
          ),
        )
      ],
      alignment: Alignment.bottomCenter,
    );
  }

  Widget _getItemGrid() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          width: 60,
          height: 60,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('images/profile.png')),
        ),
        Text(
          'arashfarhadi',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, fontFamily: 'GB', color: Colors.white),
        )
      ],
    );
  }
}
