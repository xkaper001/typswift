import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'user_db.dart';

class DatabaseService {
  Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDB();
    return _database;
  }

  Future<String> get fullPath async {
    const name = 'user.db';
    final path = await getDatabasesPath();
    return join(path, name);
  }

  Future<Database> _initDB() async {
    final path = await fullPath;
    var database = await openDatabase(
      path,
      version: 1,
      onCreate: create,
      singleInstance: true,
    );
    return database;
  }

  FutureOr<void> create(Database db, int version) async {
    await UserDB().createSettingsTable(db);
  }
}
 