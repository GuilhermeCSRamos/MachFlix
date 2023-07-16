abstract class Genre {
    String name;

    Genre({
        required this.name,
    });

    Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}