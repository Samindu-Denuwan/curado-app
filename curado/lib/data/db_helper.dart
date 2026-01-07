import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'models/inquiry_data.dart';

class DbHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'inquiry.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE inquiries(id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT, name TEXT, mobile TEXT, email TEXT, message TEXT)',
        );
      },
    );
  }

  Future<int> insertInquiry(InquiryData inquiryData) async {
    final db = await database;
    return await db.insert('inquiries', {
      'title': inquiryData.title,
      'name': inquiryData.name,
      'mobile': inquiryData.mobile,
      'email': inquiryData.email,
      'message': inquiryData.message,
    });
  }

  Future<List<InquiryData>> getInquiries() async {
    final db = await database;

    final List<Map<String, dynamic>> result = await db.query(
      'inquiries',
      orderBy: 'id DESC',
    );

    return result.map((map) => InquiryData.fromMap(map)).toList();
  }
}
