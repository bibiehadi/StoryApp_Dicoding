import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../commons/config/themes/theme.dart';
import '../bloc/stories_bloc.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocConsumer<StoriesBloc, StoriesState>(
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
