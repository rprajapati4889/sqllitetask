import 'package:dartz/dartz.dart';
import 'package:empsqllte/core/error/failure.dart';
import 'package:empsqllte/core/usecases/usecase.dart';
import 'package:empsqllte/feature/crud-on-audit_table/data/datasources/database/audit_entity_db.dart';
import 'package:empsqllte/feature/crud-on-audit_table/domain/repository/audit_entity_repository.dart';

class UpdateAuditEntities extends UseCase<void, AuditEntity> {
  final AuditEntityRepository repository;

  UpdateAuditEntities(this.repository);

  @override
  Future<Either<Failure, void>?>? call(AuditEntity params) async {
    return await repository.updateAuditEntities(params);
  }
}
