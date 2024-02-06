part of 'language_bloc.dart';

abstract class LanguageState extends Equatable {
  @override
  List<Object?> get props => throw [];
}

final class InitialLanguageState extends LanguageState {}

final class ChangedLanguageState extends LanguageState {
  final Language selectedLanguage;

  ChangedLanguageState({required this.selectedLanguage});
  @override
  List<Object> get props => [selectedLanguage];
}
