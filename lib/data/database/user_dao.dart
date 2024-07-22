import 'db_helper.dart';
import '../models/user.dart';

class UserDao {
  final dbHelper = DatabaseHelper.instance;

  Future<void> insertUser(User user) async {
    final db = await dbHelper.database;
    await db.insert('users', user.toMap());
  }

  Future<User?> getUser(String username, String password) async {
    final db = await dbHelper.database;
    final maps = await db.query(
      'users',
      where: 'username = ? AND password = ?',
      whereArgs: [username, password],
    );

    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    } else {
      return null;
    }
  }
}
