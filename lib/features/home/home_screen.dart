import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../auth/data/datasources/local_datasources/auth_local_datasource.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Story App'),
        actions: [
          IconButton(
              onPressed: () async {
                await AuthLocalDatasource().removeAuthData();
                context.goNamed('login');
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}
