import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:story_app/features/home/presentations/stories_screen.dart';
import 'package:story_app/features/home/presentations/story_page.dart';

import '../../../features/auth/data/datasources/local_datasources/auth_local_datasource.dart';
import '../../../features/auth/presentations/login_page.dart';
import '../../../features/auth/presentations/register_page.dart';
import '../../../features/home/home_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/stories',
  routes: [
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: _rootNavigatorKey,
      builder: (BuildContext context, GoRouterState state,
              StatefulNavigationShell navigationShell) =>
          HomeScreen(child: navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorKey,
          routes: [
            GoRoute(
                name: 'home',
                path: '/stories',
                builder: (context, state) => const StoriesScreen(),
                routes: [
                  GoRoute(
                    path: ':userId',
                    builder: (context, state) => StoryPage(
                        storyId: state.pathParameters['userId'] ?? ''),
                  ),
                ]),
          ],
        )
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      name: 'register',
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
  ],
  redirect: (context, state) async {
    final isLogin = await AuthLocalDatasource().isLogin();
    if (!isLogin) {
      return '/';
    }
    return null;
  },
);
