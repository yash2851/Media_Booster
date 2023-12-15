import 'dart:convert';

List<VideoModel> videoModelFromJson(String str) =>
    List<VideoModel>.from(json.decode(str).map((x) => VideoModel.fromJson(x)));

String videoModelToJson(List<VideoModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VideoModel {
  String title;
  String thumbnail;
  String video;

  VideoModel({
    required this.title,
    required this.thumbnail,
    required this.video,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
        title: json["title"],
        thumbnail: json["thumbnail"],
        video: json["video"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "thumbnail": thumbnail,
        "video": video,
      };
}

List<VideoModel> videoList = [
  VideoModel(
    title: 'Malang Sajna',
    thumbnail: 'assets/vimages/malang_sjna.jpeg',
    video: 'assets/videos/malang_sjna.mp4',
  ),
  VideoModel(
    title: 'Rabba Janda',
    thumbnail: 'assets/vimages/rbba_janda.jpeg',
    video: 'assets/videos/Rabba_janda.mp4',
  ),
  VideoModel(
    title: 'Kahani Suno',
    thumbnail: 'assets/vimages/khani_suno.jpeg',
    video: 'assets/videos/khani_suno.mp4',
  ),
  VideoModel(
    title: 'Heer Ranjha',
    thumbnail: 'assets/vimages/heer_ranjha.jpeg',
    video: 'assets/videos/heer_ranjha.mp4',
  ),
  VideoModel(
    title: 'Nathni',
    thumbnail: 'assets/vimages/nathni image.jpg',
    video: 'assets/videos/nathni.mp4',
  ),
  VideoModel(
    title: 'Rabba Janda',
    thumbnail: 'assets/vimages/rbba_janda.jpeg',
    video: 'assets/videos/Rabba_janda.mp4',
  ),
  VideoModel(
    title: 'Malang Sajna',
    thumbnail: 'assets/vimages/malang_sjna.jpeg',
    video: 'assets/videos/malang_sjna.mp4',
  ),
  VideoModel(
    title: 'Kahani Suno',
    thumbnail: 'assets/vimages/khani_suno.jpeg',
    video: 'assets/videos/khani_suno.mp4',
  ),
  VideoModel(
    title: 'Heer Ranjha',
    thumbnail: 'assets/vimages/heer_ranjha.jpeg',
    video: 'assets/videos/heer_ranjha.mp4',
  ),
  VideoModel(
    title: 'Nathni',
    thumbnail: 'assets/vimages/nathni image.jpg',
    video: 'assets/videos/nathni.mp4',
  ),
];
