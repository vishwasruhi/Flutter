import 'Note.dart';
import 'dart:async';
import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';


class DatabaseHelper{
  static DatabaseHelper _databaseHelper; //Singleton
  static Database _database; //Singleton

  String noteTable= 'note_table';
  String colID='id';
  String colTitle='title';
  String colDescription='description';
  String colDate='date';
  String colPriority='priority';

  DatabaseHelper._createInstance();

  factory DatabaseHelper()
  {
    if(_databaseHelper == null)
    _databaseHelper=DatabaseHelper._createInstance();
    return _databaseHelper;
  }
//cutom getter
  Future<Database> get database async
  {
    if(_database==null)
    {
      _database=await initialiseDatabase();
    }
    return _database;
  }
Future<Database> initialiseDatabase() async
{
  Directory directory = await getApplicationDocumentsDirectory();
  String path=directory.path + 'notes.db';

  var notesDatabase = await openDatabase(path,version: 1,onCreate: _createDB);
  return notesDatabase;
  
}
}