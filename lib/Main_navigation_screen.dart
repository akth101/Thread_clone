import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thread_clone/Nav_tab.dart';
import 'package:thread_clone/TimelineScreen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const TimeLineScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const Center(
              child: Text("Search"),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: const Center(
              child: Text("New page"),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const Center(
              child: Text("Heart"),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: const Center(
              child: Text("Profile"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            NavTab(
              isSelected: _selectedIndex == 0,
              icon: FontAwesomeIcons.house,
              selectedIcon: FontAwesomeIcons.house,
              onTap: () => _onTap(0),
            ),
            NavTab(
              isSelected: _selectedIndex == 1,
              icon: FontAwesomeIcons.magnifyingGlass,
              selectedIcon: FontAwesomeIcons.magnifyingGlassArrowRight,
              onTap: () => _onTap(1),
            ),
            NavTab(
              isSelected: _selectedIndex == 2,
              icon: FontAwesomeIcons.pen,
              selectedIcon: FontAwesomeIcons.penClip,
              onTap: () => _onTap(2),
            ),
            NavTab(
              isSelected: _selectedIndex == 3,
              icon: FontAwesomeIcons.heart,
              selectedIcon: FontAwesomeIcons.solidHeart,
              onTap: () => _onTap(3),
            ),
            NavTab(
              isSelected: _selectedIndex == 4,
              icon: FontAwesomeIcons.user,
              selectedIcon: FontAwesomeIcons.solidUser,
              onTap: () => _onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
