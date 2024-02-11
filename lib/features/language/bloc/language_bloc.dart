import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:story_app/features/language/data/datasource/local_datasource/languange_datasource.dart';
import 'package:story_app/features/language/data/models/language_model.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(InitialLanguageState()) {
    on<ChangeLanguageEvent>(
      (event, emit) async {
        await LanguangeDatasource().setLanguange(event.selectedLanguage);
        emit(ChangedLanguageState(selectedLanguage: event.selectedLanguage));
      },
    );
  }
}
