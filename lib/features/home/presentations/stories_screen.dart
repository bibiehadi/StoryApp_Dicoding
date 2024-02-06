import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:story_app/features/home/bloc/get_stories_bloc/get_stories_bloc.dart';
import 'package:story_app/features/home/data/models/response/get_stories_response_model.dart';

import '../../../commons/config/themes/theme.dart';
import '../../auth/data/datasources/local_datasources/auth_local_datasource.dart';
import 'widget/story_card.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({super.key});

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    BlocProvider.of<GetStoriesBloc>(context).add(const GetStoriesEvent.first());
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        BlocProvider.of<GetStoriesBloc>(context)
            .add(const GetStoriesEvent.add());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
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
      body: RefreshIndicator(
        onRefresh: () async => BlocProvider.of<GetStoriesBloc>(context)
            .add(const GetStoriesEvent.first()),
        child: BlocBuilder<GetStoriesBloc, GetStoriesState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(
                  color: secondaryColor,
                ),
              ),
              success: (listStory) {
                final stories = listStory;
                return ListView.builder(
                  controller: scrollController,
                  itemCount: stories!.length + 1,
                  itemBuilder: (context, index) {
                    if (index == stories.length) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return StoryCard(story: stories[index]);
                  },
                );
              },
              initial: () => const Center(
                child: CircularProgressIndicator(
                  color: secondaryColor,
                ),
              ),
              failed: (String message) => Center(
                child: Text(message),
              ),
            );
          },
        ),
      ),
    );
  }
}

// _onRefresh(BuildContext context) async {
//   BlocProvider.of<GetStoriesBloc>(context).add(GetStoriesEvent());
// }
