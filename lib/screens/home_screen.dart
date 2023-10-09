import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          width: 128,
          height: 24,
          child: Image.asset('images/moodinger_logo.png'),
        ),
        actions: [
          Container(
            height: 24,
            width: 24,
            margin: EdgeInsets.only(right: 17),
            child: Image.asset('images/icon_direct.png'),
          )
        ],
      ),
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [_getFullStories(), _getPostList()],
          ),
        ),
      ),
    );
  }

  Widget _getFullStories() {
    return SizedBox(
      height: 115,
      child: ListView.builder(
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return index == 0 ? _addStoryBox() : _getStoryHeader();
        }),
      ),
    );
  }

  Widget _getPostList() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              SizedBox(
                height: 34,
              ),
              _getPostHeader(),
              SizedBox(
                height: 23,
              ),
              _getPost(),
            ],
          );
        }));
  }

  Widget _getPost() {
    return Container(
      height: 440,
      width: 394,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('images/post_cover.png'),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Image.asset('images/icon_video.png'),
          ),
          Positioned(
            bottom: 15,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                child: Container(
                  height: 46,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.5),
                          Color.fromRGBO(255, 255, 255, 0.2),
                        ]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('images/icon_hart.png'),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '2.6 K',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'GB'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('images/icon_comments.png'),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '1.5 K',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'GB'),
                            ),
                          ],
                        ),
                        Image.asset('images/icon_share.png'),
                        Image.asset('images/icon_save.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getPostHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _getStory(),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'esmaeilfarhadi',
                  style: TextStyle(
                      fontFamily: 'GB', color: Colors.white, fontSize: 12),
                ),
                Text(
                  'برنامه نویس فلاتر',
                  style: TextStyle(
                      fontFamily: 'SM', fontSize: 12, color: Colors.white),
                )
              ],
            ),
          ),
          Spacer(),
          Image.asset('images/icon_menu.png')
        ],
      ),
    );
  }

  Widget _getStory() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      color: Color(0xffF35383),
      dashPattern: [40, 10],
      strokeWidth: 2,
      padding: EdgeInsets.all(4),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: 38,
          width: 38,
          child: Image.asset('images/profile.png'),
        ),
      ),
    );
  }

  Widget _getStoryHeader() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(17),
            color: Color(0xffF35383),
            dashPattern: [40, 10],
            strokeWidth: 2,
            padding: EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Container(
                height: 58,
                width: 58,
                child: Image.asset('images/profile.png'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Username',
            style:
                TextStyle(color: Colors.white, fontFamily: 'GB', fontSize: 10),
          )
        ],
      ),
    );
  }

  Widget _addStoryBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              // color: Colors.red,
              border: Border.all(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Image.asset('images/icon_plus.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Your Story',
            style:
                TextStyle(color: Colors.white, fontFamily: 'GB', fontSize: 10),
          )
        ],
      ),
    );
  }
}
