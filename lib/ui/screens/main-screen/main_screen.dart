import 'package:dribble_parentpal/ui/screens/chat_screen/chat_screen.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/home_screens.dart';
import 'package:dribble_parentpal/ui/screens/main-screen/widgets/bottom_nav_bar.dart';
import 'package:dribble_parentpal/ui/screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import '../hub_screens/hub_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const HomeScreens(),
    const SearchScreen(),
    const ChatScreen(),
    const HubScreen(),
    const HubScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavBar(onTap: _onItemTapped, selectedIndex: _selectedIndex),
    );
  }
}
