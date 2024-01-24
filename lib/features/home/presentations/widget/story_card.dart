import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../commons/config/themes/theme.dart';
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Card(
        surfaceTintColor: Colors.white,
        color: Colors.white,
        shadowColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            _profile(),
            const SizedBox(height: 5),
            _storyImage(context),
            _reactButton(),
            _storyDescription(),
          ],
        ),
      ),
    );
  }

  Widget _storyDescription() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '2048 Likes',
            style: myTextTheme.bodySmall
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${widget.story.name}',
                      style:
                          myTextTheme.titleSmall?.copyWith(color: Colors.black),
                    ),
                    const TextSpan(text: " "),
                    TextSpan(
                      text: widget.story.description,
                      style:
                          myTextTheme.bodyMedium?.copyWith(color: Colors.black),
                    )
                  ],
                ),
                maxLines: isReadMore ? 10 : 1,
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Text(
                    isReadMore ? "Read less" : "Read more",
                    style: myTextTheme.bodySmall?.copyWith(color: Colors.black),
                  ),
                  onTap: () {
                    setState(() {
                      isReadMore = !isReadMore;
                    });
                  },
                ),
              )
            ],
          ),
          Text(
            DateFormat('MMMM dd, yyyy')
                .format(widget.story.createdAt!)
                .toString(),
            style: myTextTheme.bodySmall?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _reactButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.heart_broken),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.bookmark_outline),
        ),
      ],
    );
  }

  Widget _storyImage(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 2 / 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          widget.story.photoUrl!,
          fit: BoxFit.fill,
          errorBuilder: (context, error, stackTrace) => const Center(
              child: Text(
            "Image could't be loaded",
            textAlign: TextAlign.center,
          )),
        ),
      ),
    );
  }

  Widget _profile() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          child: Image.network(
            widget.story.photoUrl!,
            fit: BoxFit.fill,
            width: 40,
            height: 40,
            errorBuilder: (context, error, stackTrace) => const Center(
                child: Text(
              "Image could't be loaded",
              textAlign: TextAlign.center,
            )),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          widget.story.name ?? '',
          style: myTextTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
