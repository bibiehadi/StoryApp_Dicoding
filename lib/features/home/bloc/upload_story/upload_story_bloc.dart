import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_app/features/auth/data/models/response/register_response_model.dart';
import 'package:story_app/features/home/data/datasources/remote_datasources/stories_datasource.dart';

part 'upload_story_event.dart';
part 'upload_story_state.dart';
part 'upload_story_bloc.freezed.dart';

class PickImageStoryBloc
    extends Bloc<PickImageStoryEvent, PickImageStoryState> {
  final StroiesDatasource _storiesDatasource;
  PickImageStoryBloc(this._storiesDatasource) : super(_Initial()) {
    on<_PickImagePhotoEvent>(
      (event, emit) async {
        emit(const PickImageStoryState.loading());
        final ImagePicker picker = ImagePicker();
        try {
          final XFile? pickedFile = await picker.pickImage(
            source: ImageSource.camera,
            imageQuality: 50,
          );
          if (pickedFile != null) {
            return emit(
              PickImageStoryState.success(
                imagePath: pickedFile.path,
                imageFile: pickedFile,
              ),
            );
          }
          return emit(const PickImageStoryState.failed('Gagal memilih gambar'));
        } catch (e) {
          return emit(PickImageStoryState.failed('Error: $e'));
        }
      },
    );

    on<_PickImageGaleryEvent>(
      (event, emit) async {
        emit(const PickImageStoryState.loading());
        final ImagePicker picker = ImagePicker();
        try {
          final XFile? pickedFile = await picker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 50,
          );
          if (pickedFile != null) {
            return emit(
              PickImageStoryState.success(
                imagePath: pickedFile.path,
                imageFile: pickedFile,
              ),
            );
          }
          return emit(const PickImageStoryState.failed('Gagal memilih gambar'));
        } catch (e) {
          return emit(PickImageStoryState.failed('Error : $e'));
        }
      },
    );

    on<_UploadImageEvent>((event, emit) async {
      emit(const PickImageStoryState.uploadLoading());
      final response = await _storiesDatasource.postStory(
          imageFile: event.imageFile,
          description: event.description,
          lat: event.lat,
          lon: event.lon);
      response.fold(
        (left) => emit(PickImageStoryState.uploadFailed(left)),
        (right) {
          return emit(PickImageStoryState.uploadSuccess(right));
        },
      );
    });
  }
}
