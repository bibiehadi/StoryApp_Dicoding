import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_app/commons/config/routers/router.dart';
import 'package:story_app/features/auth/bloc/auth_bloc.dart';
import 'package:story_app/features/auth/data/datasources/remote_datasources/auth_datasource.dart';

import 'commons/config/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(AuthDatasource()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Stories App',
        theme: ThemeData(
          colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              secondary: secondaryColor,
              onPrimary: thirdColor),
          textTheme: myTextTheme,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              foregroundColor: thirdColor,
              textStyle: const TextStyle(),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
          ),
        ),
        routerConfig: router,
      ),
    );
  }
}
