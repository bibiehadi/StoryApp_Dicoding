part of 'stories_bloc.dart';

sealed class StoriesState extends Equatable {
  const StoriesState();

  @override
  List<Object> get props => [];
}

final class StoriesInitial extends StoriesState {}

final class StoriesLoading extends StoriesState {}

final class StoriesFailed extends StoriesState {
  final String message;

  const StoriesFailed({required this.message});

  @override
  List<Object> get props => [message];
}

final class StoriesSuccess extends StoriesState {
  final GetStoriesResponseModel responseModel;

  const StoriesSuccess({required this.responseModel});

  @override
  List<Object> get props => [responseModel];
}
