class UploadStoryRequestModel {
  String? description;
  List<int>? photo;
  double? lat;
  double? lon;

  UploadStoryRequestModel({
    this.description,
    this.photo,
    this.lat,
    this.lon,
  });
}
