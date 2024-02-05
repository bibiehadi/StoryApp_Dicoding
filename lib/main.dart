import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_app/commons/config/routers/router.dart';
import 'package:story_app/features/auth/bloc/auth_bloc.dart';
import 'package:story_app/features/auth/data/datasources/remote_datasources/auth_datasource.dart';
import 'package:story_app/features/home/bloc/get_stories_bloc/get_stories_bloc.dart';
import 'package:story_app/features/home/bloc/story_detail_bloc/story_detail_bloc.dart';
import 'package:story_app/features/home/bloc/upload_story/upload_story_bloc.dart';
import 'package:story_app/commons/common.dart';
import 'package:story_app/features/language/data/datasource/local_datasource/languange_datasource.dart';
import 'package:story_app/features/language/data/models/language_model.dart';
import 'package:story_app/features/language/language_bloc/language_bloc.dart';

import 'commons/config/themes/theme.dart';
import 'features/home/data/datasources/remote_datasources/stories_datasource.dart';

void main() {
  // final savedLang = await LanguangeDatasource().getLanguange();
  // print("SAVED LANG : $savedLang");
  // if (savedLang != '') {
  //   runApp(BlocProvider(
  //     create: (context) => LanguageBloc()
  //       ..add(ChangeLanguageEvent(
  //         selectedLanguage: (savedLang == 'Indonesia')
  //             ? Language.indonesia
  //             : Language.english,
  //       )),
  //     child: const MainApp(),
  //   ));
  // } else {
  runApp(BlocProvider(
    create: (context) => LanguageBloc(),
    child: const MainApp(),
  ));
  // }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  initState() {
    getLanguange();
    super.initState();
  }

  Future<void> getLanguange() async {
    final savedLang = await LanguangeDatasource().getLanguange();
    if (savedLang != '') {
      BlocProvider.of<LanguageBloc>(context).add(
        ChangeLanguageEvent(
          selectedLanguage: (savedLang == 'Indonesia')
              ? Language.indonesia
              : Language.english,
        ),
      );
    }
  }

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
            create: (context) => GetStoriesBloc(
              StroiesDatasource(),
            ),
          ),
          BlocProvider(
            create: (context) => GetStoryDetailBloc(
              StroiesDatasource(),
            ),
          ),
          BlocProvider(
            create: (context) => PickImageStoryBloc(
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
          locale: (state is ChangedLanguageState)
              ? state.selectedLanguage.value
              : Language.indonesia.value,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: router,
        ),
      ),
    );
  }
}
