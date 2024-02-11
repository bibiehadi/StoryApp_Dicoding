import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_app/commons/config/flavor_config.dart';
import 'package:story_app/features/language/bloc/language_bloc.dart';
import 'package:story_app/main_app.dart';

void main() {
  FlavorConfig();
  runApp(
    BlocProvider(
      create: (context) => LanguageBloc(),
      child: const MainApp(),
    ),
  );
}
