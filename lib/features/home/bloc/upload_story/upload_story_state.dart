part of 'upload_story_bloc.dart';

@freezed
class PickImageStoryState with _$PickImageStoryState {
  const factory PickImageStoryState.initial() = _Initial;
  const factory PickImageStoryState.loading() = _PickImageStoryLoading;
  const factory PickImageStoryState.failed(String message) =
      _PickImageStoryFailed;
  const factory PickImageStoryState.success(
      {required String imagePath,
      required XFile imageFile}) = _PickImageStorySuccess;

  const factory PickImageStoryState.uploadLoading() = _PickImageUploadLoading;
  const factory PickImageStoryState.uploadFailed(String message) =
      _PickImageUploadFailed;
  const factory PickImageStoryState.uploadSuccess(
      RegisterResponseModel responseModel) = _PickImageUploadSuccess;
}
