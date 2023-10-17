import 'package:flutter/material.dart';

class addPost extends StatelessWidget {
  const addPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              _getScrollingPart(),
              Container(
                height: 73,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    color: Color(0xff272B40)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'draft',
                        style: TextStyle(
                            fontFamily: 'GB',
                            fontSize: 18,
                            color: Color(0xffF35383)),
                      ),
                      Text('Gallery',
                          style: TextStyle(
                              fontFamily: 'GB',
                              fontSize: 18,
                              color: Colors.white)),
                      Text('Take',
                          style: TextStyle(
                              fontFamily: 'GB',
                              fontSize: 18,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _getScrollingPart() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _getHeader(),
        ),
        SliverToBoxAdapter(
          child: _getSelectedImage(),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'images/item$index.png',
                  fit: BoxFit.cover,
                ),
              );
            }, childCount: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 6, crossAxisSpacing: 6),
          ),
        ),
        SliverPadding(padding: EdgeInsets.only(bottom: 83))
      ],
    );
  }

  Widget _getSelectedImage() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17),
      height: 394,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          'images/Postmain.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _getHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 18),
      child: Row(
        children: [
          Text(
            'Post',
            style:
                TextStyle(fontFamily: 'GB', color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset('images/icon_arrow_down.png'),
          Spacer(),
          Text(
            'Next',
            style:
                TextStyle(fontFamily: 'GB', color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset('images/icon_arrow_right_box.png')
        ],
      ),
    );
  }
}
