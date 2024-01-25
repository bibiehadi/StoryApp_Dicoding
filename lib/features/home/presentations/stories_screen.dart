import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../commons/config/themes/theme.dart';
import '../../auth/data/datasources/local_datasources/auth_local_datasource.dart';
import '../bloc/stories_bloc/stories_bloc.dart';
import 'widget/story_card.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({super.key});

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  @override
  void initState() {
    BlocProvider.of<StoriesBloc>(context).add(GetStoriesEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: thirdColor,
        foregroundColor: secondaryColor,
        surfaceTintColor: primaryColor,
        title: Text(
          'Story App',
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
      body: BlocConsumer<StoriesBloc, StoriesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is StoriesLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: secondaryColor,
              ),
            );
          }

          if (state is StoriesSuccess) {
            final stories = state.responseModel.listStory;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (stories!.isNotEmpty)
                    ...stories
                        .map(
                          (story) => StoryCard(story: story),
                        )
                        .toList()
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
