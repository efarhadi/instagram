import 'package:flutter/material.dart';

import '../models/enums/activity_type.dart';

class activityScreen extends StatefulWidget {
  activityScreen({Key? key}) : super(key: key);

  @override
  State<activityScreen> createState() => activityScreenState();
}

class activityScreenState extends State<activityScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 65,
              color: Color(0xff1C1F2E),
              child: Center(
                child: TabBar(
                  labelStyle: TextStyle(fontSize: 20, fontFamily: 'GB'),
                  indicatorColor: Color(0xffF35583),
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                  indicatorWeight: 4,
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: 'Following',
                    ),
                    Tab(
                      text: 'You',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                _getSampleList(),
                _getSampleList(),
              ],
            )),
          ],
        ),
      ),
    );
  }

  Widget _getSampleList() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 22.0, left: 30),
            child: Text(
              'New',
              style: TextStyle(
                  color: Color(
                    0xffFFFFFF,
                  ),
                  fontFamily: 'GB',
                  fontSize: 16),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return _getTabContent(ActivityStatus.following);
        }, childCount: 2)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 12.0, left: 30),
            child: Text(
              'Today',
              style: TextStyle(
                  color: Color(
                    0xffFFFFFF,
                  ),
                  fontFamily: 'GB',
                  fontSize: 16),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return _getTabContent(ActivityStatus.like);
        }, childCount: 3)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 12.0, left: 30),
            child: Text(
              'This week',
              style: TextStyle(
                  color: Color(
                    0xffFFFFFF,
                  ),
                  fontFamily: 'GB',
                  fontSize: 16),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return _getTabContent(ActivityStatus.followback);
        }, childCount: 6))
      ],
    );
  }

  Widget _getTabContent(ActivityStatus status) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration:
                BoxDecoration(color: Color(0xffF35383), shape: BoxShape.circle),
          ),
          SizedBox(
            width: 7,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'images/item8.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'arashfarhadi',
            style:
                TextStyle(fontFamily: 'GB', fontSize: 12, color: Colors.white),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Liked your post',
            style: TextStyle(
                fontFamily: 'GM', fontSize: 12, color: Color(0xffC5C5C5)),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '5min',
            style: TextStyle(
                fontFamily: 'GB', fontSize: 10, color: Color(0xffC5C5C5)),
          ),
          Spacer(),
          _getActivityStatus(status)
        ],
      ),
    );
  }

  Widget _getActivityStatus(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.followback:
        return ElevatedButton(
          onPressed: () {},
          child:
              Text('Follow', style: TextStyle(fontFamily: 'GB', fontSize: 12)),
          style: ElevatedButton.styleFrom(
            primary: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        );
      case ActivityStatus.following:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
                fontFamily: 'GB', fontSize: 12, color: Color(0xffC5C5C5)),
          ),
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Color(0xffC5C5C5), width: 2)),
        );
      case ActivityStatus.like:
        return // SizedBox(
            SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('images/item8.png', fit: BoxFit.cover),
          ),
        );

      default:
        return SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('images/item1.png', fit: BoxFit.cover),
          ),
        );
    }
  }
}
