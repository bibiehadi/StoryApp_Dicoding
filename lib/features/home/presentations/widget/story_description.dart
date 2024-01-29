import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:story_app/commons/common.dart';

import '../../../../commons/config/themes/theme.dart';

class StoryDescription extends StatefulWidget {
  const StoryDescription(
      {super.key,
      required this.name,
      required this.description,
      required this.date});
  final String name;
  final String description;
  final DateTime date;

  @override
  State<StoryDescription> createState() => _StoryDescriptionState();
}

class _StoryDescriptionState extends State<StoryDescription> {
  bool isReadMore = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '2048 ${AppLocalizations.of(context)!.likeText}',
            style: myTextTheme.bodySmall
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Wrap(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: widget.name,
                      style:
                          myTextTheme.titleSmall?.copyWith(color: Colors.black),
                    ),
                    const TextSpan(text: " "),
                    TextSpan(
                      text: widget.description,
                      style:
                          myTextTheme.bodyMedium?.copyWith(color: Colors.black),
                    )
                  ],
                ),
                maxLines: isReadMore ? null : 1,
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Text(
                    isReadMore
                        ? AppLocalizations.of(context)!.readLessText
                        : AppLocalizations.of(context)!.readMoreText,
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
            DateFormat('MMMM dd, yyyy').format(widget.date).toString(),
            style: myTextTheme.bodySmall?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
