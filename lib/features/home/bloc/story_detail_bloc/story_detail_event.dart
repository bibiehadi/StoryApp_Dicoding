part of 'story_detail_bloc.dart';

@freezed
class GetStoryDetailEvent with _$GetStoryDetailEvent {
  const factory GetStoryDetailEvent.started() = _Started;
  const factory GetStoryDetailEvent.add(String storyId) = _Add;
}
