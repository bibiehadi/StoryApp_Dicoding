import 'package:flutter/material.dart';

class StoryImage extends StatelessWidget {
  const StoryImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageUrl,
          fit: BoxFit.fill,
          loadingBuilder: (context, child, loadingProgress) =>
              (loadingProgress == null)
                  ? child
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
          errorBuilder: (context, error, stackTrace) => const Center(
              child: Text(
            "Image could't be loaded",
            textAlign: TextAlign.center,
          )),
        ),
      ),
    );
  }
}
