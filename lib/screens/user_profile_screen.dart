import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: ((context, IsScrolled) {
              return [
                SliverAppBar(
                  toolbarHeight: 80,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18, top: 18),
                      child: Icon(
                        Icons.menu,
                      ),
                    )
                  ],
                  expandedHeight: 170,
                  backgroundColor: Color(0xff1C1F2E),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'images/item1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff1C1F2E),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15))),
                        height: 14,
                      )),
                ),
                SliverToBoxAdapter(
                  child: _getNameUserProfile(),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  // floating: true,
                  delegate: TabBarviewDelegate(
                    TabBar(
                      indicatorColor: Color(0xffF35583),
                      indicatorPadding: EdgeInsets.only(bottom: 5),
                      indicatorWeight: 2,
                      tabs: [
                        Tab(
                          icon: Image.asset('images/icon_tab_posts.png'),
                        ),
                        Tab(
                          icon: Image.asset('images/icon_tab_bookmark.png'),
                        )
                      ],
                    ),
                  ),
                )
              ];
            }),
            body: TabBarView(children: [
              CustomScrollView(
                slivers: [
                  SliverPadding(padding: EdgeInsets.only(top: 15)),
                  _getProfileContent(),
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverPadding(padding: EdgeInsets.only(top: 15)),
                  _getProfileContent(),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _getProfileContent() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
            (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Image.asset(
                      'images/item$index.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            childCount: 10),
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            QuiltedGridTile(1, 1),
            QuiltedGridTile(2, 2),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
          ],
        ),
      ),
    );
  }

  Widget _getNameUserProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 70,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color(0xffF35383),
                ),
                borderRadius: BorderRadius.circular(15)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.asset(
                'images/profile.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 18,
              ),
              Text(
                'آرش فرهادی برنامه نویس فلاتر',
                style: TextStyle(
                    color: Colors.white, fontSize: 14, fontFamily: 'SM'),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'arashfarhadi',
                style: TextStyle(
                    fontFamily: 'GB', fontSize: 12, color: Color(0xffC5C5C5)),
              )
            ],
          ),
          Spacer(),
          Image.asset('images/icon_profile_edit.png')
        ],
      ),
    );
  }
}

class TabBarviewDelegate extends SliverPersistentHeaderDelegate {
  TabBarviewDelegate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(color: Color(0xff1C1F2E), child: _tabBar);
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
