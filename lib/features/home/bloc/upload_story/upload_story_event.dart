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
  final num lat;
  final num lon;

  const DoUploadStoryEvent({
    required this.imageFile,
    required this.description,
    required this.lat,
    required this.lon,
  });
}
