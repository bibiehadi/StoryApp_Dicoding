import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'image_galery_event.dart';
part 'image_galery_state.dart';

class ImageGaleryBloc extends Bloc<ImageGaleryEvent, ImageGaleryState> {
  ImageGaleryBloc() : super(ImageGaleryInitial()) {}
}
