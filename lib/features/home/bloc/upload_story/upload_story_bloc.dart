import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_app/features/auth/data/models/response/register_response_model.dart';
import 'package:story_app/features/home/data/datasources/remote_datasources/stories_datasource.dart';

part 'upload_story_event.dart';
part 'upload_story_state.dart';

class UploadStoryBloc extends Bloc<UploadStoryEvent, UploadStoryState> {
  final StroiesDatasource _storiesDatasource;
  UploadStoryBloc(this._storiesDatasource) : super(UploadStoryInitial()) {
    on<PickImageGaleryEvent>(
      (event, emit) async {
        emit(ImageGaleryLoading());
        final ImagePicker picker = ImagePicker();
        try {
          final XFile? pickedFile = await picker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 50,
          );
          if (pickedFile != null) {
            return emit(
              ImageGalerySuccess(
                imagePath: pickedFile.path,
                imageFile: pickedFile,
              ),
            );
          }
          return emit(const ImageGaleryFailed(message: 'Gagal memilih gambar'));
        } catch (e) {
          return emit(ImageGaleryFailed(message: 'Error: $e'));
        }
      },
    );

    on<PickImageCameraGaleryEvent>(
      (event, emit) async {
        emit(ImageGaleryLoading());
        final ImagePicker picker = ImagePicker();
        try {
          final XFile? pickedFile = await picker.pickImage(
            source: ImageSource.camera,
            imageQuality: 50,
          );
          if (pickedFile != null) {
            return emit(
              ImageGalerySuccess(
                imagePath: pickedFile.path,
                imageFile: pickedFile,
              ),
            );
          }
          return emit(const ImageGaleryFailed(message: 'Gagal memilih gambar'));
        } catch (e) {
          return emit(ImageGaleryFailed(message: 'Error : $e'));
        }
      },
    );

    on<DoUploadStoryEvent>((event, emit) async {
      emit(UploadStoryLoading());
      final response = await _storiesDatasource.postStory(
          imageFile: event.imageFile,
          description: event.description,
          lat: event.lat,
          lon: event.lon);
      response.fold(
        (left) => emit(UploadStoryFailed(message: left)),
        (right) {
          return emit(UploadStorySuccess(responseModel: right));
        },
      );
    });
  }
}
