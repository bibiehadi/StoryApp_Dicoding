import 'package:flutter/material.dart';

import '../../../../commons/config/themes/theme.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          child: Image.network(
            imageUrl,
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
          name,
          style: myTextTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
