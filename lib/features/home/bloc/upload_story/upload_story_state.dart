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


// abstract class UploadStoryState {
//   const UploadStoryState();
// }

// final class ImageGaleryLoading extends UploadStoryState {}

// final class ImageGaleryFailed extends UploadStoryState {
//   final String message;
//   const ImageGaleryFailed({required this.message});
// }

// final class ImageGalerySuccess extends UploadStoryState {
//   final String imagePath;
//   final XFile imageFile;

//   const ImageGalerySuccess({required this.imagePath, required this.imageFile});
// }

// final class UploadStoryInitial extends UploadStoryState {}

// final class UploadStoryLoading extends UploadStoryState {}

// final class UploadStoryFailed extends UploadStoryState {
//   final String message;

//   const UploadStoryFailed({required this.message});
// }

// final class UploadStorySuccess extends UploadStoryState {
//   final RegisterResponseModel responseModel;

//   const UploadStorySuccess({required this.responseModel});
// }
