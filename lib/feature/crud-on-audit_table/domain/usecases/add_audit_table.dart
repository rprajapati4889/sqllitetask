import 'package:dartz/dartz.dart';
import 'package:empsqllte/core/error/failure.dart';
import 'package:empsqllte/core/usecases/usecase.dart';
import 'package:empsqllte/feature/crud-on-audit_table/domain/repository/audit_entity_repository.dart';

class AddAuditEntities extends UseCase<void, NoParams> {
  final AuditEntityRepository repository;

  AddAuditEntities(this.repository);

  @override
  Future<Either<Failure, void>?>? call(NoParams params) async {
    return await repository.addAuditEntities();
  }
}