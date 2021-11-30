part of 'audit_entities_bloc.dart';

@immutable
abstract class AuditEntitiesEvent extends Equatable {
  final AuditEntity? auditEntity;
  const AuditEntitiesEvent({this.auditEntity});
  @override
  List<Object> get props => [auditEntity!];
}

class GetAllAuditEntityEvent extends AuditEntitiesEvent {
  const GetAllAuditEntityEvent();
}

class DeleteAuditEntityEvent extends AuditEntitiesEvent {
  const DeleteAuditEntityEvent(AuditEntity auditEntities) : super(auditEntity: auditEntities);
}

class AddAuditEntityEvent extends AuditEntitiesEvent {
  const AddAuditEntityEvent() : super();
}

class UpdateAuditEntityEvent extends AuditEntitiesEvent {
  const UpdateAuditEntityEvent(AuditEntity auditEntities) : super(auditEntity: auditEntities);
}
