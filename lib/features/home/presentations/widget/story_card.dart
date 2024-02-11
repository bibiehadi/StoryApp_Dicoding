import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:story_app/features/home/presentations/widget/profile_bar.dart';
import 'package:story_app/features/home/presentations/widget/story_description.dart';
import 'package:story_app/features/home/presentations/widget/story_image.dart';
import 'package:story_app/features/home/presentations/widget/story_react_button.dart';
import '../../data/models/response/get_stories_response_model.dart';

class StoryCard extends StatefulWidget {
  const StoryCard({
    super.key,
    required this.story,
  });

  final ListStory story;

  @override
  State<StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  bool isReadMore = false;
  bool isLike = false;
  bool isBookmark = false;
  String location = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            ProfileBar(
              imageUrl: widget.story.photoUrl ?? '',
              name: widget.story.name ?? '',
              // withLocation: false,
              lat: 0,
              lon: 0,
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                context.push('/stories/${widget.story.id}');
              },
              child: StoryImage(imageUrl: widget.story.photoUrl ?? ''),
            ),
            const StoryReactButton(),
            StoryDescription(
                name: widget.story.name ?? '',
                description: widget.story.description ?? '',
                date: widget.story.createdAt!)
          ],
        ),
      ),
    );
  }
}
