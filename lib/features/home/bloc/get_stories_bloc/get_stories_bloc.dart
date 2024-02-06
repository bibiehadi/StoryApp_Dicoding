import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_app/features/home/data/datasources/remote_datasources/stories_datasource.dart';
import 'package:story_app/features/home/data/models/response/get_stories_response_model.dart';

part 'get_stories_event.dart';
part 'get_stories_state.dart';
part 'get_stories_bloc.freezed.dart';

class GetStoriesBloc extends Bloc<GetStoriesEvent, GetStoriesState> {
  int pageItem = 1;
  int sizeItem = 5;
  bool isLastPage = false;
  List<ListStory> listStory = [];
  final StroiesDatasource _storiesDatasource;
  GetStoriesBloc(this._storiesDatasource) : super(const _Initial()) {
    on<_First>((event, emit) async {
      emit(const _GetStoriesLoading());
      pageItem = 1;
      sizeItem = 5;
      listStory = [];
      final response = await _storiesDatasource.getStroies();
      response.fold(
        (left) => emit(_GetStoriesFailed(left)),
        (right) {
          listStory = right.listStory!;
          pageItem += 1;
          return emit(_GetStoriesSuccess(right.listStory));
        },
      );
    });

    on<_Add>((event, emit) async {
      if (isLastPage) return;
      if (pageItem == 1) emit(const _GetStoriesLoading());
      final response = await _storiesDatasource.getStroies(pageItem, sizeItem);
      response.fold(
        (left) => emit(_GetStoriesFailed(left)),
        (right) {
          if (right.listStory!.length < sizeItem) {
            isLastPage = true;
          } else {
            pageItem += 1;
          }
          listStory += right.listStory!;
          return emit(_GetStoriesSuccess(listStory + right.listStory!));
        },
      );
    });
  }
}
