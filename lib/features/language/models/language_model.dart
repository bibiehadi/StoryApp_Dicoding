import 'dart:ui';

enum Language {
  indonesia(
    Locale('id', 'ID'),
    'Indonesia',
  ),
  english(
    Locale('en', 'US'),
    'English',
  );

  const Language(
    this.value,
    this.text,
  );

  final Locale value;
  final String text;
}
