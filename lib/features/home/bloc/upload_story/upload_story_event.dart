part of 'upload_story_bloc.dart';

@freezed
class PickImageStoryEvent with _$PickImageStoryEvent {
  const factory PickImageStoryEvent.pickImagePhoto() = _PickImagePhotoEvent;
  const factory PickImageStoryEvent.pickImageGalery() = _PickImageGaleryEvent;
  const factory PickImageStoryEvent.uploadImage({
    required XFile imageFile,
    required String description,
    required num lat,
    required num lon,
  }) = _UploadImageEvent;
}
