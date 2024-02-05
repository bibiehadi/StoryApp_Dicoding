import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_app/features/home/data/datasources/remote_datasources/stories_datasource.dart';
import 'package:story_app/features/home/data/models/response/get_stories_response_model.dart';

part 'get_stories_event.dart';
part 'get_stories_state.dart';
part 'get_stories_bloc.freezed.dart';

class GetStoriesBloc extends Bloc<GetStoriesEvent, GetStoriesState> {
  final StroiesDatasource _storiesDatasource;
  GetStoriesBloc(this._storiesDatasource) : super(const _Initial()) {
    on<_Add>((event, emit) async {
      emit(const _GetStoriesLoading());
      final response = await _storiesDatasource.getStroies();
      response.fold(
        (left) => emit(_GetStoriesFailed(left)),
        (right) {
          return emit(_GetStoriesSuccess(right));
        },
      );
    });
  }
}
