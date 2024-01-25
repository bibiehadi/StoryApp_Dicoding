part of 'stories_bloc.dart';

abstract class StoriesEvent extends Equatable {
  const StoriesEvent();

  @override
  List<Object> get props => [];
}

class GetStoriesEvent extends StoriesEvent {
  @override
  List<Object> get props => [];
}
