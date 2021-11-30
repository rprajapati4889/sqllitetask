import 'package:drift/drift.dart';
import 'package:empsqllte/feature/crud-on-audit_table/data/datasources/database/audit_entity_db.dart';

part 'audit_entity_dao.g.dart';

@DriftAccessor(tables: [AuditTable])
class AuditEntityDao extends DatabaseAccessor<AppDatabase>
    with _$AuditEntityDaoMixin {
  final AppDatabase db;

  AuditEntityDao(this.db) : super(db);

  Future<List<AuditEntity>> watchAllAuditEntity() => select(auditTable).get();

  Future<void> insertAuditEntity(List<AuditTableCompanion> auditEntities) async{
    await batch((batch) {
      batch.insertAll(auditTable, auditEntities);
    });
  }


  Future updateAuditEntity(Insertable<AuditEntity> auditEntities) =>
      update(auditTable).replace(auditEntities);

  Future deleteAuditEntity(Insertable<AuditEntity> auditEntities) =>
      delete(auditTable).delete(auditEntities);
}


