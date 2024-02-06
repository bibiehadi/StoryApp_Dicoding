part of 'language_bloc.dart';

abstract class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class ChangeLanguageEvent extends LanguageEvent {
  final Language selectedLanguage;

  const ChangeLanguageEvent({required this.selectedLanguage});

  @override
  List<Object> get props => [selectedLanguage];
}
