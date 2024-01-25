part of 'story_detail_bloc.dart';

abstract class StoryDetailEvent extends Equatable {
  const StoryDetailEvent();

  @override
  List<Object> get props => [];
}

class GetDetailStoryEvent extends StoryDetailEvent {
  final String storyId;

  const GetDetailStoryEvent({required this.storyId});
  @override
  List<Object> get props => [storyId];
}
