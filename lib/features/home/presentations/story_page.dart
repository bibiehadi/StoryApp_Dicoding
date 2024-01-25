import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_app/features/home/bloc/story_detail_bloc/story_detail_bloc.dart';
import '../../../commons/config/themes/theme.dart';
import 'widget/profile_bar.dart';
import 'widget/story_description.dart';
import 'widget/story_image.dart';
import 'widget/story_react_button.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({
    super.key,
    required this.storyId,
  });
  final String storyId;

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  void initState() {
    BlocProvider.of<StoryDetailBloc>(context)
        .add(GetDetailStoryEvent(storyId: widget.storyId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                onPressed: () async {},
                icon: const Icon(Icons.more_vert_rounded)),
          ],
        ),
        body: BlocConsumer<StoryDetailBloc, StoryDetailState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            if (state is StoryDetailFailed) {
              return Center(
                child: Text('FAILED: ${state.message}'),
              );
            }
            if (state is StoryDetailLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: secondaryColor,
                ),
              );
            }
            if (state is StoryDetailSuccess) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    ProfileBar(
                      imageUrl: state.responseModel.story?.photoUrl ?? '',
                      name: state.responseModel.story?.name ?? '',
                    ),
                    const SizedBox(height: 5),
                    StoryImage(
                        imageUrl: state.responseModel.story?.photoUrl ?? ''),
                    const StoryReactButton(),
                    StoryDescription(
                        name: state.responseModel.story?.name ?? '',
                        description:
                            state.responseModel.story?.description ?? '',
                        date: state.responseModel.story!.createdAt!)
                  ],
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
