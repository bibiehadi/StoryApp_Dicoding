part of 'story_detail_bloc.dart';

sealed class StoryDetailState {
  const StoryDetailState();
}

final class StoryDetailInitial extends StoryDetailState {}

final class StoryDetailLoading extends StoryDetailState {}

final class StoryDetailFailed extends StoryDetailState {
  final String message;

  const StoryDetailFailed({required this.message});
}

final class StoryDetailSuccess extends StoryDetailState {
  final GetDetailStoryResponseModel responseModel;

  const StoryDetailSuccess({required this.responseModel});
}
