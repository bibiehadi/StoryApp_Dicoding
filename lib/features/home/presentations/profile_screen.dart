import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:story_app/commons/common.dart';
import 'package:story_app/commons/config/themes/theme.dart';
import 'package:story_app/features/auth/data/datasources/local_datasources/auth_local_datasource.dart';
import 'package:story_app/features/language/language_bloc/language_bloc.dart';
import 'package:story_app/features/language/models/language_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: thirdColor,
        foregroundColor: secondaryColor,
        surfaceTintColor: primaryColor,
        title: Text(
          'Profile',
          style: myTextTheme.titleLarge,
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await AuthLocalDatasource().removeAuthData();
                context.goNamed('login');
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              onTap: () {
                showModalLanguangeMenu(context);
              },
              title: Text(AppLocalizations.of(context)!.languageText),
              leading: const Icon(Icons.language),
            )
          ],
        ),
      ),
    );
  }
}

showModalLanguangeMenu(BuildContext context) {
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
            leading: const Icon(
              Icons.flag,
              color: Colors.red,
            ),
            title: const Text('Indonesia'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Ganti bahasa sukses'),
                ),
              );
              BlocProvider.of<LanguageBloc>(context).add(
                const ChangeLanguageEvent(selectedLanguage: Language.indonesia),
              );
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.flag,
              color: Colors.blue,
            ),
            title: const Text('English'),
            onTap: () {
              BlocProvider.of<LanguageBloc>(context).add(
                const ChangeLanguageEvent(selectedLanguage: Language.english),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Change language success'),
                ),
              );
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
