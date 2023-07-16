import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DB {
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'machflix.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_user);
    await db.execute(_genre);
    await db.execute(_video);
    await db.execute(_video_genre);
  }

  String get _user => '''
    CREATE TABLE user(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name VARCHAR NOT NULL,
      email VARCHAR NOT NULL,
      password VARCHAR NOT NULL
    );
  ''';

  String get _genre => '''
    CREATE TABLE genre(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name VARCHAR NOT NULL
    );
  ''';

  String get _video => '''
    CREATE TABLE video(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name VARCHAR(2) NOT NULL,
      description TEXT NOT NULL,
	    type INTEGER NOT NULL,
	    ageRestriction VARCHAR NOT NULL,
	    durationMinutes INTEGER NOT NULL,
	    thumbnailImageId VARCHAR NOT NULL,
	    releaseDate TEXT NOT NULL
    );
  ''';
  String get _video_genre => '''
    CREATE TABLE video_genre(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      videoid INTEGER NOT NULL,
	      genreid INTEGER NOT NULL,
	    FOREIGN KEY(videoid) REFERENCES video(id),
	    FOREIGN KEY(genreid) REFERENCES genre(id)
    );
  ''';
}
