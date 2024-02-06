part of 'get_stories_bloc.dart';

@freezed
class GetStoriesEvent with _$GetStoriesEvent {
  const factory GetStoriesEvent.started() = _Started;
  const factory GetStoriesEvent.first() = _First;
  const factory GetStoriesEvent.add() = _Add;
}
