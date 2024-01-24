import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:story_app/features/home/presentations/stories_screen.dart';

import '../../../features/auth/data/datasources/local_datasources/auth_local_datasource.dart';
import '../../../features/auth/presentations/login_page.dart';
import '../../../features/auth/presentations/register_page.dart';
import '../../../features/home/home_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/login',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
              StatefulNavigationShell navigationShell) =>
          HomeScreen(child: navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorKey,
          routes: [
            GoRoute(
              name: 'home',
              path: '/home',
              builder: (context, state) => const StoriesScreen(),
            ),
          ],
        )
      ],
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
  ],
  redirect: (context, state) async {
    final isLogin = await AuthLocalDatasource().isLogin();
    if (isLogin) {
      return '/home';
    }
    return null;
  },
);
