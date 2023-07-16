abstract class Video {
    String name;
    String description;
    int type;
    String age_restriction;
    int duration_minutes;
    String thumbnail_image;
    String release_date;

    Video({
        required this.name,
        required this.description,
        required this.type,
        required this.age_restriction,
        required this.duration_minutes,
        required this.thumbnail_image,
        required this.release_date,
    });

    Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'type': type,
      'age_restriction': age_restriction,
      'duration_minutes': duration_minutes,
      'thumbnail_image': thumbnail_image,
      'release_date': release_date,
    };
  }
}