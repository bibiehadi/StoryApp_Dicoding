import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasources/remote_datasources/stories_datasource.dart';
import '../../data/models/response/get_detail_story_response_model.dart';

part 'story_detail_event.dart';
part 'story_detail_state.dart';
part 'story_detail_bloc.freezed.dart';

class GetStoryDetailBloc
    extends Bloc<GetStoryDetailEvent, GetStoryDetailState> {
  final StroiesDatasource _storiesDatasource;
  GetStoryDetailBloc(this._storiesDatasource) : super(const _Initial()) {
    on<_Add>((event, emit) async {
      emit(const GetStoryDetailState.loading());
      final response = await _storiesDatasource.getDetailStory(event.storyId);
      response.fold(
        (left) => emit(GetStoryDetailState.failed(left)),
        (right) {
          return emit(GetStoryDetailState.success(right));
        },
      );
    });
  }
}
