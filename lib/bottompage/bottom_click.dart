import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_list/home.dart';
import 'bottom_list/look.dart';
import 'bottom_list/mypage.dart';
import 'bottom_list/map.dart';

class Bottom extends StatelessWidget {
  // const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page();
  }
}

class Page extends StatefulWidget {
  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  int _currentIndex = 0;
  final screens = [
    Home(),
    Map(),
    Look(),
    MyPage(),
  ];

  late List<GlobalKey<NavigatorState>> _navigatorKeyList;

  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatorKeyList =
        List.generate(screens.length, (index) => GlobalKey<NavigatorState>());
  }

  //final _navigatorKeyList = List.generate(3, (index) => GlobalKey<NavigatorState>());

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !(await _navigatorKeyList[_currentIndex]
            .currentState!
            .maybePop());
      },
      child: DefaultTabController(
        length: 4,
        child: Scaffold(

          body: IndexedStack(
            index: _currentIndex,

            children: screens.map(
                  (page) {
                int index = screens.indexOf(page);
                return CustomNavigator(
                  page: page,
                  navigatorKey: _navigatorKeyList[index],
                );
              },
            ).toList(),

          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) => setState(() => _currentIndex = index),
            selectedItemColor: Color(0xFFF3D5FB),
            unselectedItemColor: Colors.black,


            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,
                ),
                label: '지도',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book,
                ),
                label: '둘러보기',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: '마이페이지',
              ),
            ],
          ),
        ),
      ),
    );
  }


}

class CustomNavigator extends StatefulWidget {
  final Widget page;
  final Key navigatorKey;

  const CustomNavigator(
      {Key? key, required this.page, required this.navigatorKey})
      : super(key: key);

  @override
  _CustomNavigatorState createState() => _CustomNavigatorState();
}

class _CustomNavigatorState extends State<CustomNavigator>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (_) =>
          MaterialPageRoute(builder: (context) => widget.page),
    );
  }
}
