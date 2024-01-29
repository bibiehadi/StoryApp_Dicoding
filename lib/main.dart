import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_app/commons/config/routers/router.dart';
import 'package:story_app/features/auth/bloc/auth_bloc.dart';
import 'package:story_app/features/auth/data/datasources/remote_datasources/auth_datasource.dart';
import 'package:story_app/features/home/bloc/pick_image/image_galery_bloc.dart';
import 'package:story_app/features/home/bloc/stories_bloc/stories_bloc.dart';
import 'package:story_app/features/home/bloc/story_detail_bloc/story_detail_bloc.dart';
import 'package:story_app/features/home/bloc/upload_story/upload_story_bloc.dart';
import 'package:story_app/commons/common.dart';
import 'package:story_app/features/language/language_bloc/language_bloc.dart';

import 'commons/config/themes/theme.dart';
import 'features/home/data/datasources/remote_datasources/stories_datasource.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => LanguageBloc(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              AuthDatasource(),
            ),
          ),
          BlocProvider(
            create: (context) => StoriesBloc(
              StroiesDatasource(),
            )..add(GetStoriesEvent()),
          ),
          BlocProvider(
            create: (context) => StoryDetailBloc(
              StroiesDatasource(),
            ),
          ),
          BlocProvider(
            create: (context) => ImageGaleryBloc(),
          ),
          BlocProvider(
            create: (context) => UploadStoryBloc(
              StroiesDatasource(),
            ),
          )
        ],
        child: MaterialApp.router(
          title: 'Stories App',
          theme: ThemeData(
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
            colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: primaryColor,
                secondary: secondaryColor,
                onPrimary: thirdColor,
                background: thirdColor),
          ),
          locale: state.selectedLanguage.value,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: router,
        ),
      ),
    );
  }
}
