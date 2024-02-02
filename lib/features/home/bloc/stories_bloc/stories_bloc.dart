import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/datasources/remote_datasources/stories_datasource.dart';
import '../../data/models/response/get_stories_response_model.dart';

part 'stories_event.dart';
part 'stories_state.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  final StroiesDatasource _storiesDatasource;
  StoriesBloc(this._storiesDatasource) : super(StoriesInitial()) {
    on<GetStoriesEvent>(
      (event, emit) async {
        emit(StoriesLoading());
        final response = await _storiesDatasource.getStroies();
        response.fold(
          (left) => emit(StoriesFailed(message: left)),
          (right) {
            return emit(StoriesSuccess(responseModel: right));
          },
        );
      },
    );
  }
}
