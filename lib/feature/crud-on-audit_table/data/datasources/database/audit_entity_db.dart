import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:empsqllte/feature/crud-on-audit_table/data/datasources/daos/audit_entity_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;
part 'audit_entity_db.g.dart';


@DataClassName('AuditEntity')
class AuditTable extends Table {
  IntColumn get auditEntityId => integer().nullable()();
  IntColumn get auditId => integer().nullable()();
  IntColumn get auditEntityTypeId => integer().nullable()();
  IntColumn get auditParentEntityId => integer().nullable()();
  IntColumn get sequenceNo => integer().nullable()();
  IntColumn get entityLevel => integer().nullable()();
  BoolColumn get isLeafNode => boolean().nullable()();
  BoolColumn get entityException => boolean().nullable()();
  TextColumn get auditEntityName => text().nullable()();
  TextColumn get barcodeNfc => text().nullable()();
  TextColumn get scheduleOccurrenceIds => text().nullable()();
  DateTimeColumn get entityEndDate => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {auditEntityId};
}

@DriftDatabase(tables: [AuditTable],daos: [AuditEntityDao])
// _$AppDatabase is the name of the generated class
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e)
  // Specify the location of the database file
      : super(e);

  // Bump this when changing tables and columns.
  // Migrations will be covered in the next part.
  @override
  int get schemaVersion => 1;
}

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getDatabasesPath();
    final file = File(p.join(dbFolder, 'db.sqlite'));
    return NativeDatabase(file);
  });
}