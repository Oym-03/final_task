import 'package:flutter/material.dart';
import 'welcome page.dart';
import 'Slide1Screen.dart';
import 'Slide2Screen.dart';
import 'Slide3Screen.dart';
void main() {
  runApp(const WelcomeApp());
}

class WelcomeApp extends StatelessWidget {
  const WelcomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  final List<Widget> screens = [
    Side1Screen(),
    Side2Screen(),
    Side3Screen(),
  ];

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: screens.length, vsync: this);
    _tabController!.addListener(() {
      setState(() {}); // This is to rebuild the widget when tab changes (optional).
    });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: TabBarView(
        controller: _tabController,
        children: screens,
      ),

      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xff2B0262),
      currentIndex: _tabController!.index,
      onTap: (index) {
        _tabController!.animateTo(index);
      },

      items: [
        BottomNavigationBarItem(
          icon: buildTabIcon(Icons.home, 0),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: buildTabIcon(Icons.account_tree_rounded, 1),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: buildTabIcon(Icons.star_border, 2),
          label: '',
        ),
      ],
    );
  }

  Widget buildTabIcon(IconData icon, int index) {
    final isSelected = index == _tabController!.index;

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.white : null,
      ),
      child: IconButton(
        onPressed: () {
          _tabController!.animateTo(index);
        },
        icon: Icon(
          icon,
          size: 35,
          color: isSelected ? const Color(0xff2B0262) : Colors.white,
        ),
      ),
    );
  }
}


