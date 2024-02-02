import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/datasources/remote_datasources/stories_datasource.dart';
import '../../data/models/response/get_detail_story_response_model.dart';

part 'story_detail_event.dart';
part 'story_detail_state.dart';

class StoryDetailBloc extends Bloc<StoryDetailEvent, StoryDetailState> {
  final StroiesDatasource _storiesDatasource;
  StoryDetailBloc(this._storiesDatasource) : super(StoryDetailInitial()) {
    on<GetDetailStoryEvent>(
      (event, emit) async {
        emit(StoryDetailLoading());
        final response = await _storiesDatasource.getDetailStory(event.storyId);
        response.fold(
          (left) => emit(StoryDetailFailed(message: left)),
          (right) {
            return emit(StoryDetailSuccess(responseModel: right));
          },
        );
      },
    );
  }
}
