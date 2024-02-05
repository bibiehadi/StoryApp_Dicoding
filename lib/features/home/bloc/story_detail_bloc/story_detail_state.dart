part of 'story_detail_bloc.dart';

@freezed
class GetStoryDetailState with _$GetStoryDetailState {
  const factory GetStoryDetailState.initial() = _Initial;
  const factory GetStoryDetailState.loading() = _GetStoryDetailLoading;
  const factory GetStoryDetailState.failed(String message) =
      _GetStoryDetailFailed;
  const factory GetStoryDetailState.success(
      GetDetailStoryResponseModel responseModel) = _GetStoryDetailSuccess;
}
