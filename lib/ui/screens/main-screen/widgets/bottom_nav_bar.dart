import 'package:flutter/material.dart';

import '../../../../config/all_texts.dart';

class BottomNavBar extends StatefulWidget {
  final Function(int) onTap;
  final int selectedIndex;
  const BottomNavBar({super.key,required this.onTap,required this.selectedIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: widget.selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value) {
            widget.onTap(value);
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: AllTexts.home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: AllTexts.profile,
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.mail, color: Colors.white),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.apps),
              label: AllTexts.hub,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline),
              label: AllTexts.profile,
            ),
          ],
        ),
      ),
    );
  }
}
