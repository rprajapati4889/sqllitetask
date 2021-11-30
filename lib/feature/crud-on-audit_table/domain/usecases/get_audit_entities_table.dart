import 'package:dartz/dartz.dart';
import 'package:empsqllte/core/error/failure.dart';
import 'package:empsqllte/core/usecases/usecase.dart';
import 'package:empsqllte/feature/crud-on-audit_table/data/datasources/database/audit_entity_db.dart';
import 'package:empsqllte/feature/crud-on-audit_table/domain/repository/audit_entity_repository.dart';

class GetAuditEntities extends UseCase<List<AuditEntity?>, NoParams> {
  final AuditEntityRepository repository;

  GetAuditEntities(this.repository);

  @override
  Future<Either<Failure, List<AuditEntity?>>?>? call(NoParams params) async {
    return await repository.getAllEntriesFromAuditEntities();
  }
}