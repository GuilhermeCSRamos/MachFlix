import 'package:machflix/models/my_videos.dart';
import 'package:machflix/models/video.dart';
import 'package:machflix/database/db.dart';
import 'package:sqflite/sqlite_api.dart';

class UserRepository {
  late Database db;
  String nome = "";
  String email = "";
  String senha = "";
  List<dynamic> _videos = [];

  UserRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getMyVideos();
  }

  _getMyVideos() async {
    db = await DB.instance.database;
    List user = await db.rawQuery('SELECT * FROM user');
    return user;
  }

  // setMyVideos(Video _video) async {
  //   db = await DB.instance.database;
  //   db.update('user', _video);
  //   // notifyListeners();
  // }
}
