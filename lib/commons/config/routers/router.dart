import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:story_app/features/home/presentations/add_location_screen.dart';
import 'package:story_app/features/home/presentations/map_screen.dart';
import 'package:story_app/features/home/presentations/profile_screen.dart';
import 'package:story_app/features/home/presentations/stories_screen.dart';
import 'package:story_app/features/home/presentations/story_page.dart';
import 'package:story_app/features/home/presentations/upload_screen.dart';

import '../../../features/auth/data/datasources/local_datasources/auth_local_datasource.dart';
import '../../../features/auth/presentations/login_page.dart';
import '../../../features/auth/presentations/register_page.dart';
import '../../../features/home/home_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _uploadNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _settingNavigatorKey =
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
          navigatorKey: _homeNavigatorKey,
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
        ),
        StatefulShellBranch(
          navigatorKey: _uploadNavigatorKey,
          routes: [
            GoRoute(
              name: 'upload',
              path: '/upload',
              builder: (context, state) => const UploadScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _settingNavigatorKey,
          routes: [
            GoRoute(
              name: 'profile',
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      name: 'map',
      path: '/map',
      builder: (context, state) => MapScreen(
        lat: state.uri.queryParameters['lat'] ?? '0',
        lon: state.uri.queryParameters['lon'] ?? '0',
      ),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      name: 'add_location',
      path: '/add_location',
      builder: (context, state) => const AddLocationScreen(),
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
      if (state.matchedLocation == '/login' ||
          state.matchedLocation == '/register') return null;
      return '/login';
    }
    return null;
  },
);
