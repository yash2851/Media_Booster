import 'dart:convert';

List<AudioModel> audioModelFromJson(String str) =>
    List<AudioModel>.from(json.decode(str).map((x) => AudioModel.fromJson(x)));

String audioModelToJson(List<AudioModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AudioModel {
  String songName;
  String poster;
  String audio;

  AudioModel({
    required this.songName,
    required this.poster,
    required this.audio,
  });

  factory AudioModel.fromJson(Map<String, dynamic> json) => AudioModel(
        songName: json["songName"],
        poster: json["poster"],
        audio: json["audio"],
      );

  Map<String, dynamic> toJson() => {
        "songName": songName,
        "poster": poster,
        "audio": audio,
      };
}

List<AudioModel> audioList = [
  AudioModel(
      songName: 'Man Meri Jann',
      poster: 'assets/images/maan meri jann.jpg',
      audio: 'assets/audio/Tu Maan Meri Jaan.mp3'),
  AudioModel(
      songName: 'Rattan Lambiyan',
      poster: "assets/images/rataan lambiya.jpg",
      audio: "assets/audios/rattan lambiyan.mp3"),
  AudioModel(
    songName: 'O Bandeya',
    poster: "assets/images/O Bedardeya.jpg",
    audio: "assets/audio/O Bedardeya(PagalWorld.com.se).mp3",
  ),
  AudioModel(
    songName: 'Srivalli',
    poster: "assets/images/srivali img.jpg",
    audio: "assets/audio/Srivalli(PagalWorld.com.se).mp3",
  ),
  AudioModel(
    songName: 'Malang Sajna',
    poster: "assets/images/malag sajna img.jpg",
    audio: "assets/audio/Malang Sajna(PagalWorld.com.se).mp3",
  ),
  AudioModel(
    songName: 'khani suno',
    poster: "assets/images/khani suno img.jpg",
    audio: "assets/audio/Kahani Suno(PagalWorld.com.se).mp3",
  ),
  AudioModel(
    songName: 'joome Jo Pathan',
    poster: "assets/images/joome.png",
    audio: "assets/audio/Jhoome Jo Pathaan.mp3",
  ),
  AudioModel(
    songName: 'Malang Sajna',
    poster: "assets/images/malag sajna img.jpg",
    audio: "assets/audio/Malang Sajna(PagalWorld.com.se).mp3",
  ),
  AudioModel(
    songName: 'Kesariya',
    poster: "assets/images/kesriya.jpg",
    audio: "assets/audio/kesriya.mp3",
  ),
  AudioModel(
    songName: "Heer Ranjha",
    poster: "assets/images/heer rhnja img.jpg",
    audio: "assets/audio/_ Heer Ranjha(PagalWorld.com.se).mp3",
  ),
];
