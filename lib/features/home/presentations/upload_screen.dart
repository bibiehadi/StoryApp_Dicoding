import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_app/commons/common.dart';
import 'package:story_app/commons/config/flavor_config.dart';
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
  LatLng? selectedLocation;
  String address = '';
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
          'New Story',
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
                  child: BlocConsumer<PickImageStoryBloc, PickImageStoryState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        uploadFailed: (message) {
                          context.pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(message),
                              duration: const Duration(seconds: 3),
                            ),
                          );
                        },
                        uploadSuccess: (responseModel) {
                          context.pop();
                          descriptionController.clear();
                          selectedLocation = null;
                          imageFile = null;
                          address = '';
                          setState(() {});
                          BlocProvider.of<GetStoriesBloc>(context)
                              .add(const GetStoriesEvent.first());
                          context.go('/stories');
                        },
                        uploadLoading: () {
                          showDialog(
                            // The user CANNOT close this dialog  by pressing outsite it
                            barrierDismissible: false,
                            context: context,
                            builder: (_) {
                              return const Dialog(
                                // The background color
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      // The loading indicator
                                      CircularProgressIndicator(),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      // Some text
                                      Text('Loading...')
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        success: (imagePath, imageFile) {
                          setState(() {});
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        failed: (message) => const Align(
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
                        ),
                        success: (imgPath, imgFile) {
                          imageFile = imgFile;
                          return _showImage(imgPath);
                        },
                        uploadSuccess: (responseModel) {
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
                        initial: () => Align(
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
                        ),
                        orElse: () => Align(
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
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              if (FlavorConfig.instance.flavor == FlavorType.paid)
                ListTile(
                  onTap: () async {
                    List? result = await context.push<List>('/add_location');
                    selectedLocation = result![0];
                    address = result[1] ?? '';
                    setState(() {});
                  },
                  title: Text((selectedLocation == null)
                      ? AppLocalizations.of(context)!.locationText
                      : address),
                  leading: const Icon(Icons.location_on),
                  trailing: const Icon(Icons.arrow_right_sharp),
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
                    // border: const OutlineInputBorder(),
                  ),
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
                    FocusManager.instance.primaryFocus?.unfocus();
                    _onUpload(
                      context,
                      imageFile!,
                      descriptionController.text,
                      selectedLocation,
                    );
                  }
                },
                child: Text(
                  AppLocalizations.of(context)!.uploadText,
                ),
              ),
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

_onUpload(
    BuildContext context, XFile imageFile, String description, LatLng? latLng) {
  BlocProvider.of<PickImageStoryBloc>(context)
      .add(PickImageStoryEvent.uploadImage(
    imageFile: imageFile,
    description: description,
    lat: latLng == null ? 0 : latLng.latitude,
    lon: latLng == null ? 0 : latLng.longitude,
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
  BlocProvider.of<PickImageStoryBloc>(context)
      .add(const PickImageStoryEvent.pickImageGalery());
}

_onCameraView(BuildContext context) async {
  final isAndroid = defaultTargetPlatform == TargetPlatform.android;
  final isiOS = defaultTargetPlatform == TargetPlatform.iOS;
  final isNotMobile = !(isAndroid || isiOS);
  if (isNotMobile) return;
  BlocProvider.of<PickImageStoryBloc>(context)
      .add(const PickImageStoryEvent.pickImagePhoto());
}
