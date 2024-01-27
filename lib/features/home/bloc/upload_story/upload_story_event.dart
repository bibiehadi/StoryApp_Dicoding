part of 'upload_story_bloc.dart';

abstract class UploadStoryEvent extends Equatable {
  const UploadStoryEvent();

  @override
  List<Object> get props => [];
}

class PickImageGaleryEvent extends UploadStoryEvent {}

class PickImageCameraGaleryEvent extends UploadStoryEvent {}

class DoUploadStoryEvent extends UploadStoryEvent {
  final XFile imageFile;
  final String description;
  num? lat = 0;
  num? lon = 0;

  DoUploadStoryEvent(
      {required this.imageFile, required this.description, this.lat, this.lon});
}
