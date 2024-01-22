import 'package:go_router/go_router.dart';

import '../../../features/auth/data/datasources/local_datasources/auth_local_datasource.dart';
import '../../../features/auth/presentations/login_page.dart';
import '../../../features/auth/presentations/register_page.dart';
import '../../../features/home/home_screen.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomeScreen(),
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
    print('TOKEN : $isLogin');
    if (isLogin) {
      return '/';
    }
    return '/login';
  },
);
