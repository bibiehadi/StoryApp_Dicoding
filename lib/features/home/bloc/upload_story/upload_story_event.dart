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


// abstract class UploadStoryEvent extends Equatable {
//   const UploadStoryEvent();

//   @override
//   List<Object> get props => [];
// }

// class PickImageGaleryEvent extends UploadStoryEvent {}

// class PickImageCameraGaleryEvent extends UploadStoryEvent {}

// class DoUploadStoryEvent extends UploadStoryEvent {
//   final XFile imageFile;
//   final String description;
//   final num lat;
//   final num lon;

//   const DoUploadStoryEvent({
//     required this.imageFile,
//     required this.description,
//     required this.lat,
//     required this.lon,
//   });
// }
