import 'package:sqflite/sqflite.dart';

class UserDB {
  final settingsTable = 'settings';

  Future<void> createSettingsTable(Database database) async {
    await database.execute("""CREATE TABLE IF NOT EXISTS $settingsTable (
      id INTEGER PRIMARY KEY,
      name TEXT NOT NULL,
      value TEXT,
      updatedAt TEXT
      );
    """);
  }
}
