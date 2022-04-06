

import 'package:scooler_app/modules/home_index/school_ride/school_ride_homepage.dart';
import 'package:scooler_app/modules/user_tab/login.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';

import '../../essentials/essentials.dart';

class HomeIndex extends StatefulWidget {
  final int index;

  HomeIndex( int this.index)  ;

  @override
  State<HomeIndex> createState() => _HomeIndexState(index);
}

class _HomeIndexState extends State<HomeIndex> {

  int? _currentIndex;
  final int index;

  _HomeIndexState(this.index);

  int _currentPage = 0;
  var isProfilePage = true;

  @override
  initState() {

    super.initState();
    _currentPage = index;


  }
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> navigationPage = [
    SchoolRideHomePage(),
      LoginScreen(),
     LoginScreen(),
      LoginScreen(),
    LoginScreen(),



  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: bckgroundclr,
          body: navigationPage.elementAt(_currentPage),
          bottomNavigationBar: _createBottomNavigationBar(),
        ));
  }

  Widget _createBottomNavigationBar() {
    return  BottomNavigationBar(
      // showUnselectedLabels: false,

      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.white,
      onTap: (int num) {
        _currentPage = num;

        setState(() {
          isProfilePage = _currentPage == 0 ? true : false;

        });
      },
      showSelectedLabels: true,
      currentIndex: _currentPage,
      items: const [

        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/contc.png',)),
            label:' ',
            backgroundColor: Colors.black
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/call.png')),
            label:' ',
            backgroundColor: Colors.black
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/home.png')),
            label:' ',
            backgroundColor: Colors.black
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/notify.png')),
            label:' ',
            backgroundColor: Colors.black
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/prof.png')),
            label:' ',
            backgroundColor: Colors.black
        ),




      ],
    );
  }
}