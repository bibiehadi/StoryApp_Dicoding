import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../commons/config/themes/theme.dart';
import '../auth/data/datasources/local_datasources/auth_local_datasource.dart';

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
          if (index == 1) {
            Container(
              child: showModalUploadMenu(context),
            );
          } else {
            widget.child.goBranch(
              index,
              initialLocation: index == widget.child.currentIndex,
            );
          }
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

showModalUploadMenu(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useRootNavigator: true,
    backgroundColor: thirdColor,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text('Photo'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.folder),
            title: const Text('Folder'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
