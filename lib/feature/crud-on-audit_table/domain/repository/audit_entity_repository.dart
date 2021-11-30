import 'package:dartz/dartz.dart';
import 'package:empsqllte/core/error/failure.dart';
import 'package:empsqllte/feature/crud-on-audit_table/data/datasources/database/audit_entity_db.dart';


abstract class AuditEntityRepository {

  //reading all entities from audit table
  Future<Either<Failure, List<AuditEntity>>?>? getAllEntriesFromAuditEntities();

  //updating entity name in audit table
  Future<Either<Failure, void>?>? updateAuditEntities(AuditEntity auditEntity);

  Future<Either<Failure, void>?>? addAuditEntities();

  //deleting entity from audit table
  Future<Either<Failure, void>?>? deleteAuditEntities(AuditEntity auditEntity);

}