import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../commons/config/themes/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.child});
  final StatefulNavigationShell child;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        selectedItemColor: secondaryColor,
        unselectedItemColor: thirdColor,
        currentIndex: widget.child.currentIndex,
        onTap: (index) {
          widget.child.goBranch(
            index,
            initialLocation: index == widget.child.currentIndex,
          );
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), label: 'Story'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
