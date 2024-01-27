import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_app/features/home/bloc/stories_bloc/stories_bloc.dart';
import 'package:story_app/features/home/bloc/upload_story/upload_story_bloc.dart';

import '../../../commons/config/themes/theme.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  final formKey = GlobalKey<FormState>();
  XFile? imageFile;
  late TextEditingController descriptionController;
  final isWeb = kIsWeb;

  @override
  void initState() {
    descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: thirdColor,
        foregroundColor: secondaryColor,
        surfaceTintColor: primaryColor,
        title: Text(
          'Upload Story',
          style: myTextTheme.titleLarge,
        ),
        actions: [
          IconButton(
              onPressed: () async {},
              icon: const Icon(Icons.more_vert_rounded)),
        ],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: GestureDetector(
                  onTap: () => showModalUploadMenu(context),
                  child: BlocBuilder<UploadStoryBloc, UploadStoryState>(
                    builder: (context, state) {
                      if (state is ImageGaleryFailed) {
                        return const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.broken_image_rounded,
                            size: 100,
                          ),
                        );
                      }
                      if (state is ImageGalerySuccess) {
                        imageFile = state.imageFile;
                        return _showImage(state.imagePath);
                      }
                      if (state is UploadStorySuccess) {
                        return const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.image,
                            size: 100,
                          ),
                        );
                      }
                      return const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.image,
                          size: 100,
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Expanded(
                flex: 2,
                child: TextFormField(
                  controller: descriptionController,
                  maxLines: 4,
                  decoration: const InputDecoration(
                      hintText: "Enter description here..",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your description.';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(onPressed: () {
                if (formKey.currentState!.validate()) {
                  if (imageFile != null) {
                    print('hitted');
                    _onUpload(context, imageFile!, descriptionController.text);
                  }
                }
              }, child: BlocBuilder<UploadStoryBloc, UploadStoryState>(
                builder: (context, state) {
                  if (state is UploadStoryLoading) {
                    return const CircularProgressIndicator();
                  }

                  if (state is UploadStoryFailed) {
                    return Text('Error : ${state.message}');
                  }

                  if (state is UploadStorySuccess) {
                    descriptionController.text = '';
                    BlocProvider.of<StoriesBloc>(context)
                        .add(GetStoriesEvent());
                    context.go('/stories');
                  }

                  return const Text('Upload');
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}

showModalUploadMenu(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useRootNavigator: true,
    backgroundColor: thirdColor,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.camera),
            title: const Text('Photo'),
            onTap: () {
              _onCameraView(context);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Galery'),
            onTap: () {
              _onGalleryView(context);
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}

_onUpload(BuildContext context, XFile imageFile, String description) {
  BlocProvider.of<UploadStoryBloc>(context).add(DoUploadStoryEvent(
    imageFile: imageFile,
    description: description,
    lat: 0,
    lon: 0,
  ));
}

Widget _showImage(String imagePath) {
  return kIsWeb
      ? Image.network(
          imagePath.toString(),
          fit: BoxFit.contain,
        )
      : Image.file(
          File(imagePath.toString()),
          fit: BoxFit.contain,
        );
}

_onGalleryView(BuildContext context) async {
  final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;
  final isLinux = defaultTargetPlatform == TargetPlatform.linux;
  if (isMacOS || isLinux) return;
  BlocProvider.of<UploadStoryBloc>(context).add(PickImageGaleryEvent());
}

_onCameraView(BuildContext context) async {
  final isAndroid = defaultTargetPlatform == TargetPlatform.android;
  final isiOS = defaultTargetPlatform == TargetPlatform.iOS;
  final isNotMobile = !(isAndroid || isiOS);
  if (isNotMobile) return;
  BlocProvider.of<UploadStoryBloc>(context).add(PickImageCameraGaleryEvent());
}
