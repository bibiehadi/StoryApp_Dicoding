part of 'get_stories_bloc.dart';

@freezed
class GetStoriesState with _$GetStoriesState {
  const factory GetStoriesState.initial() = _Initial;
  const factory GetStoriesState.loading() = _GetStoriesLoading;
  const factory GetStoriesState.failed(String message) = _GetStoriesFailed;
  const factory GetStoriesState.success(
      {List<ListStory>? listStory, bool? isLastPage}) = _GetStoriesSuccess;
}
