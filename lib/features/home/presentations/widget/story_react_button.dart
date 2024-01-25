import 'package:flutter/material.dart';

class StoryReactButton extends StatefulWidget {
  const StoryReactButton({super.key});

  @override
  State<StoryReactButton> createState() => _StoryReactButtonState();
}

class _StoryReactButtonState extends State<StoryReactButton> {
  bool isLike = false;
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isLike = !isLike;
                });
              },
              icon: (isLike)
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(Icons.favorite_outline_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share_rounded),
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            setState(() {
              isBookmark = !isBookmark;
            });
          },
          icon: (isBookmark)
              ? const Icon(Icons.bookmark)
              : const Icon(Icons.bookmark_outline),
        ),
      ],
    );
  }
}
