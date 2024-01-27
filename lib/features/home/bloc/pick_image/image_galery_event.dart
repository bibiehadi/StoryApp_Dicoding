part of 'image_galery_bloc.dart';

abstract class ImageGaleryEvent extends Equatable {
  const ImageGaleryEvent();

  @override
  List<Object> get props => [];
}

class PickImageGaleryEvent extends ImageGaleryEvent {}

class PickImageCameraGaleryEvent extends ImageGaleryEvent {}
