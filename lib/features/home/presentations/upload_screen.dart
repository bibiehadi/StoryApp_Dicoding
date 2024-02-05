import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_app/commons/common.dart';
import 'package:story_app/features/home/bloc/get_stories_bloc/get_stories_bloc.dart';
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.broken_image_rounded,
                                size: 100,
                              ),
                              Text('Gagal mengambil gambar')
                            ],
                          ),
                        );
                      }
                      if (state is ImageGalerySuccess) {
                        imageFile = state.imageFile;
                        return _showImage(state.imagePath);
                      }
                      if (state is UploadStorySuccess) {
                        return Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.image,
                                size: 100,
                              ),
                              Text(
                                AppLocalizations.of(context)!.chooseImageText,
                              )
                            ],
                          ),
                        );
                      }
                      return Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.image,
                              size: 100,
                            ),
                            Text(
                              AppLocalizations.of(context)!.chooseImageText,
                            )
                          ],
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
                  maxLines: 8,
                  maxLength: 1000,
                  decoration: InputDecoration(
                      hintText:
                          AppLocalizations.of(context)!.inputDescriptionText,
                      border: const OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your description.';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      if (imageFile != null) {
                        FocusManager.instance.primaryFocus?.unfocus();
                        _onUpload(
                            context, imageFile!, descriptionController.text);
                      }
                    }
                  },
                  child: BlocConsumer<UploadStoryBloc, UploadStoryState>(
                    listener: (context, state) {
                      if (state is UploadStoryFailed) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.message),
                            duration: const Duration(seconds: 3),
                          ),
                        );
                      }

                      if (state is UploadStorySuccess) {
                        descriptionController.clear();
                        BlocProvider.of<GetStoriesBloc>(context)
                            .add(const GetStoriesEvent.add());
                        context.go('/stories');
                      }
                    },
                    builder: (context, state) {
                      if (state is UploadStoryLoading) {
                        return const CircularProgressIndicator();
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
              context.pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Galery'),
            onTap: () {
              _onGalleryView(context);
              context.pop();
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
