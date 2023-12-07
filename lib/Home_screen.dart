import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thread_clone/Nav_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final screens = [
    const Center(
      child: Text('hello'),
    ),
    const Center(
      child: Text('hello'),
    ),
    const Center(
      child: Text('hello'),
    ),
    const Center(
      child: Text('hello'),
    ),
    const Center(
      child: Text('hello'),
    ),
    const Center(
      child: Text('hello'),
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: FontAwesomeIcons.house,
              selectedIcon: FontAwesomeIcons.house,
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
              icon: FontAwesomeIcons.person,
              selectedIcon: FontAwesomeIcons.personBiking,
              onTap: () => _onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
