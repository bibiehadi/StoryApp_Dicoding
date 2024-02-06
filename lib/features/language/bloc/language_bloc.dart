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
        // final savedLang = await LanguangeDatasource().getLanguange();
        // if (savedLang != '') {
        //   emit(
        //     state.copyWith(
        //       selectedLanguage: (savedLang == 'Indonesia')
        //           ? Language.indonesia
        //           : Language.english,
        //     ),
        //   );
        // } else {
        await LanguangeDatasource().setLanguange(event.selectedLanguage);
        emit(ChangedLanguageState(selectedLanguage: event.selectedLanguage));
        // }
      },
    );
  }
}
