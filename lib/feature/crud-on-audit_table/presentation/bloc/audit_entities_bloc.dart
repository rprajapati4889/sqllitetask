import 'dart:core';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:empsqllte/core/error/failure.dart';
import 'package:empsqllte/core/usecases/usecase.dart';
import 'package:empsqllte/feature/crud-on-audit_table/data/datasources/database/audit_entity_db.dart';
import 'package:empsqllte/feature/crud-on-audit_table/domain/usecases/add_audit_table.dart';
import 'package:empsqllte/feature/crud-on-audit_table/domain/usecases/delete_audit_table.dart';
import 'package:empsqllte/feature/crud-on-audit_table/domain/usecases/get_audit_entities_table.dart';
import 'package:empsqllte/feature/crud-on-audit_table/domain/usecases/update_audit_table.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
part 'audit_entities_event.dart';
part 'audit_entities_state.dart';


const String Local_FAILURE_MESSAGE = 'Local Failure';
class AuditEntitiesBloc extends Bloc<AuditEntitiesEvent, AuditEntitiesState> {
  final GetAuditEntities getAuditEntities;
  final AddAuditEntities addAuditEntities;
  final DeleteAuditEntity deleteAuditEntity;
  final UpdateAuditEntities updateAuditEntities;


  AuditEntitiesBloc(this.getAuditEntities, this.addAuditEntities,
      this.deleteAuditEntity, this.updateAuditEntities)
      : super(Empty());
  @override
  Stream<AuditEntitiesState> mapEventToState(AuditEntitiesEvent event,) async* {
    if (event is GetAllAuditEntityEvent) {
      yield* _getAllSavedArticles();
    }
    if (event is DeleteAuditEntityEvent) {
      await deleteAuditEntity(event.auditEntity!);
      yield* _getAllSavedArticles();
    }
    if (event is AddAuditEntityEvent) {
      await addAuditEntities(NoParams());
      yield* _getAllSavedArticles();
    }
    if (event is UpdateAuditEntityEvent) {
      await updateAuditEntities(event.auditEntity!);
      yield* _getAllSavedArticles();
    }
  }

  Stream<AuditEntitiesState> _getAllSavedArticles() async* {
    yield Loading();
    final getAuditEntitiesList = await getAuditEntities(NoParams());
    yield* _eitherLoadedOrErrorState(getAuditEntitiesList);
  }

  Stream<AuditEntitiesState> _eitherLoadedOrErrorState(
      Either<Failure, List<AuditEntity?>?>? either,) async* {
    if (either != null) {
      yield either.fold(
            (failure) => Error(message: _mapFailureToMessage(failure)),
            (list) => Loaded(auditEntitiesList: list),
      );
    }
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case LocalFailure:
        return Local_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}