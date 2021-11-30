import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:empsqllte/core/error/failure.dart';
import 'package:empsqllte/feature/crud-on-audit_table/data/datasources/database/audit_entity_db.dart';
import 'package:empsqllte/feature/crud-on-audit_table/data/models/audit_table_model.dart';
import 'package:empsqllte/feature/crud-on-audit_table/domain/repository/audit_entity_repository.dart';
import 'package:flutter/services.dart';

class AuditTableRepositoryImpl extends AuditEntityRepository{
  final AppDatabase appDatabase;

  AuditTableRepositoryImpl({required this.appDatabase});



  @override
  Future<Either<Failure, void>?>? addAuditEntities() async {
    try {
      var jsonText = await rootBundle.loadString('assets/Entity.json');
      Map<String, dynamic> map = json.decode(jsonText);
      List<dynamic> data = map["auditEntity"];
      List<AuditEntitiesModel> subList = data.map((e) => AuditEntitiesModel.fromJson(e)).toList();
      List<AuditTableCompanion> list = [];

      for (var element in subList) {
        final data = AuditTableCompanion.insert(
          entityException: Value(element.entityException),
          entityEndDate: Value(element.entityEndDate),
          entityLevel: Value(element.entityLevel),
          auditEntityName: Value(element.auditEntityName),
          auditEntityId: Value(element.auditEntityId),
          auditEntityTypeId: Value(element.auditEntityTypeId),
          auditId: Value(element.auditId),
          auditParentEntityId: Value(element.auditParentEntityId),
          barcodeNfc: Value(element.barcodeNfc),
          isLeafNode: Value(element.isLeafNode),
          scheduleOccurrenceIds: Value(element.scheduleOccurrenceIds),
          sequenceNo: Value(element.sequenceNo),
        );
        list.add(data);
      }
      print(list);
      final add = await appDatabase.auditEntityDao
          .insertAuditEntity(list);
      return Right(add);
    } catch (e) {
      return Left(LocalFailure());
    }
  }

  @override
  Future<Either<Failure, void>?>? deleteAuditEntities(AuditEntity auditEntity) async {
    final delete = await appDatabase.auditEntityDao
        .deleteAuditEntity(auditEntity as Insertable<AuditEntity>);
    return Right(delete);
  }

  @override
  Future<Either<Failure, List<AuditEntity>>?>? getAllEntriesFromAuditEntities() async {
    try{
      final get = await appDatabase.auditEntityDao.watchAllAuditEntity();
      return Right(get);
    }on Exception{
      return Left(LocalFailure());
    }
  }

  @override
  Future<Either<Failure, void>?>? updateAuditEntities(AuditEntity auditEntity) async {
    final update = await appDatabase.auditEntityDao
        .updateAuditEntity(auditEntity as Insertable<AuditEntity>);
    return Right(update);
  }

}
