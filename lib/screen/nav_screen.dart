import 'package:flutter/material.dart';
import 'package:youtube_clone/screen/home_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;

  final _screens = [
    HomeScreen(),
    const Scaffold(
      body: Center(
        child: Text('Explore'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Add'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Subscription'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Library'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: _screens.asMap().map((i, screen) => MapEntry(
            i,
            Offstage(
              offstage: _selectedIndex != i,
              child: screen,
            ))).values.toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() {
                _selectedIndex = i;
              }),
          unselectedFontSize: 10,
          selectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                activeIcon: Icon(Icons.explore),
                label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                activeIcon: Icon(Icons.add_circle),
                label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined),
                activeIcon: Icon(Icons.subscriptions),
                label: 'Subscription'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined),
                activeIcon: Icon(Icons.video_library),
                label: 'Library'),
          ]),
    );
  }
}
