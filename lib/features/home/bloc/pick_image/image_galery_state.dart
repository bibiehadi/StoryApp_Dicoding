part of 'image_galery_bloc.dart';

sealed class ImageGaleryState {
  const ImageGaleryState();
}

final class ImageGaleryInitial extends ImageGaleryState {}

final class ImageGaleryLoading extends ImageGaleryState {}

final class ImageGaleryFailed extends ImageGaleryState {
  final String message;
  const ImageGaleryFailed({required this.message});
}

final class ImageGalerySuccess extends ImageGaleryState {
  final String imagePath;
  final XFile imageFile;

  const ImageGalerySuccess({required this.imagePath, required this.imageFile});
}
