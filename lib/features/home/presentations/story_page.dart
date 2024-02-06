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
    BlocProvider.of<GetStoryDetailBloc>(context)
        .add(GetStoryDetailEvent.add(widget.storyId));
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
            'Story',
            style: myTextTheme.titleLarge,
          ),
          actions: [
            IconButton(
                onPressed: () async {},
                icon: const Icon(Icons.more_vert_rounded)),
          ],
        ),
        body: BlocBuilder<GetStoryDetailBloc, GetStoryDetailState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(
                  color: secondaryColor,
                ),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(
                  color: secondaryColor,
                ),
              ),
              failed: (message) => Center(
                child: Text('FAILED: $message'),
              ),
              success: (responseModel) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5),
                      ProfileBar(
                        imageUrl: responseModel.story?.photoUrl ?? '',
                        name: responseModel.story?.name ?? '',
                        lat: responseModel.story?.lat ?? 0,
                        lon: responseModel.story?.lon ?? 0,
                      ),
                      const SizedBox(height: 5),
                      StoryImage(imageUrl: responseModel.story?.photoUrl ?? ''),
                      const StoryReactButton(),
                      StoryDescription(
                          name: responseModel.story?.name ?? '',
                          description: responseModel.story?.description ?? '',
                          date: responseModel.story!.createdAt!)
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
