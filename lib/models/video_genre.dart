abstract class VideoGenre {
    int video_id;
    int genre_id;

    VideoGenre({
        required this.video_id,
        required this.genre_id,
    });

    Map<String, dynamic> toMap() {
    return {
      'video_id': video_id,
      'genre_id': genre_id,
    };
  }
}