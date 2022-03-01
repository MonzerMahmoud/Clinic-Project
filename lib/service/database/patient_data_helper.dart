import 'package:clinic_project/model/patients_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import '../../constants.dart';

class PatientDataBaseHelper {
  PatientDataBaseHelper._();
  static final PatientDataBaseHelper db = PatientDataBaseHelper._();
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDb();
    return _database;
  }

  initDb() async {
    String path = join(await getDatabasesPath(), 'PatientInformation.db');
    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
CREATE TABLE $tablePatients (

  $columnName TEXT NOT NULL,
  $columnAge TEXT NOT NULL, 
  $columnImage TEXT NOT NULL
  
)

''');
    });
  }

  Future<List<PatientsModel>> getAllPatients() async {
    var dbClient = await database;
    List<Map> maps = await dbClient!.query(tablePatients);
    List<PatientsModel> list = maps.isNotEmpty
        ? maps.map((patient) => PatientsModel.fromJason(patient)).toList()
        : [];
    return list;
  }

  insert(PatientsModel model) async {
    var dbClient = await database;
    await dbClient?.insert(
      tablePatients,
      model.toJason(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
