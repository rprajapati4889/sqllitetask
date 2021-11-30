// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_entity_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class AuditEntity extends DataClass implements Insertable<AuditEntity> {
  final int? auditEntityId;
  final int? auditId;
  final int? auditEntityTypeId;
  final int? auditParentEntityId;
  final int? sequenceNo;
  final int? entityLevel;
  final bool? isLeafNode;
  final bool? entityException;
  final String? auditEntityName;
  final String? barcodeNfc;
  final String? scheduleOccurrenceIds;
  final DateTime? entityEndDate;
  AuditEntity(
      {this.auditEntityId,
      this.auditId,
      this.auditEntityTypeId,
      this.auditParentEntityId,
      this.sequenceNo,
      this.entityLevel,
      this.isLeafNode,
      this.entityException,
      this.auditEntityName,
      this.barcodeNfc,
      this.scheduleOccurrenceIds,
      this.entityEndDate});
  factory AuditEntity.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditEntity(
      auditEntityId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_entity_id']),
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_id']),
      auditEntityTypeId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_entity_type_id']),
      auditParentEntityId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_parent_entity_id']),
      sequenceNo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sequence_no']),
      entityLevel: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entity_level']),
      isLeafNode: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_leaf_node']),
      entityException: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entity_exception']),
      auditEntityName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_entity_name']),
      barcodeNfc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}barcode_nfc']),
      scheduleOccurrenceIds: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}schedule_occurrence_ids']),
      entityEndDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entity_end_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || auditEntityId != null) {
      map['audit_entity_id'] = Variable<int?>(auditEntityId);
    }
    if (!nullToAbsent || auditId != null) {
      map['audit_id'] = Variable<int?>(auditId);
    }
    if (!nullToAbsent || auditEntityTypeId != null) {
      map['audit_entity_type_id'] = Variable<int?>(auditEntityTypeId);
    }
    if (!nullToAbsent || auditParentEntityId != null) {
      map['audit_parent_entity_id'] = Variable<int?>(auditParentEntityId);
    }
    if (!nullToAbsent || sequenceNo != null) {
      map['sequence_no'] = Variable<int?>(sequenceNo);
    }
    if (!nullToAbsent || entityLevel != null) {
      map['entity_level'] = Variable<int?>(entityLevel);
    }
    if (!nullToAbsent || isLeafNode != null) {
      map['is_leaf_node'] = Variable<bool?>(isLeafNode);
    }
    if (!nullToAbsent || entityException != null) {
      map['entity_exception'] = Variable<bool?>(entityException);
    }
    if (!nullToAbsent || auditEntityName != null) {
      map['audit_entity_name'] = Variable<String?>(auditEntityName);
    }
    if (!nullToAbsent || barcodeNfc != null) {
      map['barcode_nfc'] = Variable<String?>(barcodeNfc);
    }
    if (!nullToAbsent || scheduleOccurrenceIds != null) {
      map['schedule_occurrence_ids'] = Variable<String?>(scheduleOccurrenceIds);
    }
    if (!nullToAbsent || entityEndDate != null) {
      map['entity_end_date'] = Variable<DateTime?>(entityEndDate);
    }
    return map;
  }

  AuditTableCompanion toCompanion(bool nullToAbsent) {
    return AuditTableCompanion(
      auditEntityId: auditEntityId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditEntityId),
      auditId: auditId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditId),
      auditEntityTypeId: auditEntityTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditEntityTypeId),
      auditParentEntityId: auditParentEntityId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditParentEntityId),
      sequenceNo: sequenceNo == null && nullToAbsent
          ? const Value.absent()
          : Value(sequenceNo),
      entityLevel: entityLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(entityLevel),
      isLeafNode: isLeafNode == null && nullToAbsent
          ? const Value.absent()
          : Value(isLeafNode),
      entityException: entityException == null && nullToAbsent
          ? const Value.absent()
          : Value(entityException),
      auditEntityName: auditEntityName == null && nullToAbsent
          ? const Value.absent()
          : Value(auditEntityName),
      barcodeNfc: barcodeNfc == null && nullToAbsent
          ? const Value.absent()
          : Value(barcodeNfc),
      scheduleOccurrenceIds: scheduleOccurrenceIds == null && nullToAbsent
          ? const Value.absent()
          : Value(scheduleOccurrenceIds),
      entityEndDate: entityEndDate == null && nullToAbsent
          ? const Value.absent()
          : Value(entityEndDate),
    );
  }

  factory AuditEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditEntity(
      auditEntityId: serializer.fromJson<int?>(json['auditEntityId']),
      auditId: serializer.fromJson<int?>(json['auditId']),
      auditEntityTypeId: serializer.fromJson<int?>(json['auditEntityTypeId']),
      auditParentEntityId:
          serializer.fromJson<int?>(json['auditParentEntityId']),
      sequenceNo: serializer.fromJson<int?>(json['sequenceNo']),
      entityLevel: serializer.fromJson<int?>(json['entityLevel']),
      isLeafNode: serializer.fromJson<bool?>(json['isLeafNode']),
      entityException: serializer.fromJson<bool?>(json['entityException']),
      auditEntityName: serializer.fromJson<String?>(json['auditEntityName']),
      barcodeNfc: serializer.fromJson<String?>(json['barcodeNfc']),
      scheduleOccurrenceIds:
          serializer.fromJson<String?>(json['scheduleOccurrenceIds']),
      entityEndDate: serializer.fromJson<DateTime?>(json['entityEndDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditEntityId': serializer.toJson<int?>(auditEntityId),
      'auditId': serializer.toJson<int?>(auditId),
      'auditEntityTypeId': serializer.toJson<int?>(auditEntityTypeId),
      'auditParentEntityId': serializer.toJson<int?>(auditParentEntityId),
      'sequenceNo': serializer.toJson<int?>(sequenceNo),
      'entityLevel': serializer.toJson<int?>(entityLevel),
      'isLeafNode': serializer.toJson<bool?>(isLeafNode),
      'entityException': serializer.toJson<bool?>(entityException),
      'auditEntityName': serializer.toJson<String?>(auditEntityName),
      'barcodeNfc': serializer.toJson<String?>(barcodeNfc),
      'scheduleOccurrenceIds':
          serializer.toJson<String?>(scheduleOccurrenceIds),
      'entityEndDate': serializer.toJson<DateTime?>(entityEndDate),
    };
  }

  AuditEntity copyWith(
          {int? auditEntityId,
          int? auditId,
          int? auditEntityTypeId,
          int? auditParentEntityId,
          int? sequenceNo,
          int? entityLevel,
          bool? isLeafNode,
          bool? entityException,
          String? auditEntityName,
          String? barcodeNfc,
          String? scheduleOccurrenceIds,
          DateTime? entityEndDate}) =>
      AuditEntity(
        auditEntityId: auditEntityId ?? this.auditEntityId,
        auditId: auditId ?? this.auditId,
        auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
        auditParentEntityId: auditParentEntityId ?? this.auditParentEntityId,
        sequenceNo: sequenceNo ?? this.sequenceNo,
        entityLevel: entityLevel ?? this.entityLevel,
        isLeafNode: isLeafNode ?? this.isLeafNode,
        entityException: entityException ?? this.entityException,
        auditEntityName: auditEntityName ?? this.auditEntityName,
        barcodeNfc: barcodeNfc ?? this.barcodeNfc,
        scheduleOccurrenceIds:
            scheduleOccurrenceIds ?? this.scheduleOccurrenceIds,
        entityEndDate: entityEndDate ?? this.entityEndDate,
      );
  @override
  String toString() {
    return (StringBuffer('AuditEntity(')
          ..write('auditEntityId: $auditEntityId, ')
          ..write('auditId: $auditId, ')
          ..write('auditEntityTypeId: $auditEntityTypeId, ')
          ..write('auditParentEntityId: $auditParentEntityId, ')
          ..write('sequenceNo: $sequenceNo, ')
          ..write('entityLevel: $entityLevel, ')
          ..write('isLeafNode: $isLeafNode, ')
          ..write('entityException: $entityException, ')
          ..write('auditEntityName: $auditEntityName, ')
          ..write('barcodeNfc: $barcodeNfc, ')
          ..write('scheduleOccurrenceIds: $scheduleOccurrenceIds, ')
          ..write('entityEndDate: $entityEndDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      auditEntityId,
      auditId,
      auditEntityTypeId,
      auditParentEntityId,
      sequenceNo,
      entityLevel,
      isLeafNode,
      entityException,
      auditEntityName,
      barcodeNfc,
      scheduleOccurrenceIds,
      entityEndDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditEntity &&
          other.auditEntityId == this.auditEntityId &&
          other.auditId == this.auditId &&
          other.auditEntityTypeId == this.auditEntityTypeId &&
          other.auditParentEntityId == this.auditParentEntityId &&
          other.sequenceNo == this.sequenceNo &&
          other.entityLevel == this.entityLevel &&
          other.isLeafNode == this.isLeafNode &&
          other.entityException == this.entityException &&
          other.auditEntityName == this.auditEntityName &&
          other.barcodeNfc == this.barcodeNfc &&
          other.scheduleOccurrenceIds == this.scheduleOccurrenceIds &&
          other.entityEndDate == this.entityEndDate);
}

class AuditTableCompanion extends UpdateCompanion<AuditEntity> {
  final Value<int?> auditEntityId;
  final Value<int?> auditId;
  final Value<int?> auditEntityTypeId;
  final Value<int?> auditParentEntityId;
  final Value<int?> sequenceNo;
  final Value<int?> entityLevel;
  final Value<bool?> isLeafNode;
  final Value<bool?> entityException;
  final Value<String?> auditEntityName;
  final Value<String?> barcodeNfc;
  final Value<String?> scheduleOccurrenceIds;
  final Value<DateTime?> entityEndDate;
  const AuditTableCompanion({
    this.auditEntityId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.auditEntityTypeId = const Value.absent(),
    this.auditParentEntityId = const Value.absent(),
    this.sequenceNo = const Value.absent(),
    this.entityLevel = const Value.absent(),
    this.isLeafNode = const Value.absent(),
    this.entityException = const Value.absent(),
    this.auditEntityName = const Value.absent(),
    this.barcodeNfc = const Value.absent(),
    this.scheduleOccurrenceIds = const Value.absent(),
    this.entityEndDate = const Value.absent(),
  });
  AuditTableCompanion.insert({
    this.auditEntityId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.auditEntityTypeId = const Value.absent(),
    this.auditParentEntityId = const Value.absent(),
    this.sequenceNo = const Value.absent(),
    this.entityLevel = const Value.absent(),
    this.isLeafNode = const Value.absent(),
    this.entityException = const Value.absent(),
    this.auditEntityName = const Value.absent(),
    this.barcodeNfc = const Value.absent(),
    this.scheduleOccurrenceIds = const Value.absent(),
    this.entityEndDate = const Value.absent(),
  });
  static Insertable<AuditEntity> custom({
    Expression<int?>? auditEntityId,
    Expression<int?>? auditId,
    Expression<int?>? auditEntityTypeId,
    Expression<int?>? auditParentEntityId,
    Expression<int?>? sequenceNo,
    Expression<int?>? entityLevel,
    Expression<bool?>? isLeafNode,
    Expression<bool?>? entityException,
    Expression<String?>? auditEntityName,
    Expression<String?>? barcodeNfc,
    Expression<String?>? scheduleOccurrenceIds,
    Expression<DateTime?>? entityEndDate,
  }) {
    return RawValuesInsertable({
      if (auditEntityId != null) 'audit_entity_id': auditEntityId,
      if (auditId != null) 'audit_id': auditId,
      if (auditEntityTypeId != null) 'audit_entity_type_id': auditEntityTypeId,
      if (auditParentEntityId != null)
        'audit_parent_entity_id': auditParentEntityId,
      if (sequenceNo != null) 'sequence_no': sequenceNo,
      if (entityLevel != null) 'entity_level': entityLevel,
      if (isLeafNode != null) 'is_leaf_node': isLeafNode,
      if (entityException != null) 'entity_exception': entityException,
      if (auditEntityName != null) 'audit_entity_name': auditEntityName,
      if (barcodeNfc != null) 'barcode_nfc': barcodeNfc,
      if (scheduleOccurrenceIds != null)
        'schedule_occurrence_ids': scheduleOccurrenceIds,
      if (entityEndDate != null) 'entity_end_date': entityEndDate,
    });
  }

  AuditTableCompanion copyWith(
      {Value<int?>? auditEntityId,
      Value<int?>? auditId,
      Value<int?>? auditEntityTypeId,
      Value<int?>? auditParentEntityId,
      Value<int?>? sequenceNo,
      Value<int?>? entityLevel,
      Value<bool?>? isLeafNode,
      Value<bool?>? entityException,
      Value<String?>? auditEntityName,
      Value<String?>? barcodeNfc,
      Value<String?>? scheduleOccurrenceIds,
      Value<DateTime?>? entityEndDate}) {
    return AuditTableCompanion(
      auditEntityId: auditEntityId ?? this.auditEntityId,
      auditId: auditId ?? this.auditId,
      auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
      auditParentEntityId: auditParentEntityId ?? this.auditParentEntityId,
      sequenceNo: sequenceNo ?? this.sequenceNo,
      entityLevel: entityLevel ?? this.entityLevel,
      isLeafNode: isLeafNode ?? this.isLeafNode,
      entityException: entityException ?? this.entityException,
      auditEntityName: auditEntityName ?? this.auditEntityName,
      barcodeNfc: barcodeNfc ?? this.barcodeNfc,
      scheduleOccurrenceIds:
          scheduleOccurrenceIds ?? this.scheduleOccurrenceIds,
      entityEndDate: entityEndDate ?? this.entityEndDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditEntityId.present) {
      map['audit_entity_id'] = Variable<int?>(auditEntityId.value);
    }
    if (auditId.present) {
      map['audit_id'] = Variable<int?>(auditId.value);
    }
    if (auditEntityTypeId.present) {
      map['audit_entity_type_id'] = Variable<int?>(auditEntityTypeId.value);
    }
    if (auditParentEntityId.present) {
      map['audit_parent_entity_id'] = Variable<int?>(auditParentEntityId.value);
    }
    if (sequenceNo.present) {
      map['sequence_no'] = Variable<int?>(sequenceNo.value);
    }
    if (entityLevel.present) {
      map['entity_level'] = Variable<int?>(entityLevel.value);
    }
    if (isLeafNode.present) {
      map['is_leaf_node'] = Variable<bool?>(isLeafNode.value);
    }
    if (entityException.present) {
      map['entity_exception'] = Variable<bool?>(entityException.value);
    }
    if (auditEntityName.present) {
      map['audit_entity_name'] = Variable<String?>(auditEntityName.value);
    }
    if (barcodeNfc.present) {
      map['barcode_nfc'] = Variable<String?>(barcodeNfc.value);
    }
    if (scheduleOccurrenceIds.present) {
      map['schedule_occurrence_ids'] =
          Variable<String?>(scheduleOccurrenceIds.value);
    }
    if (entityEndDate.present) {
      map['entity_end_date'] = Variable<DateTime?>(entityEndDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditTableCompanion(')
          ..write('auditEntityId: $auditEntityId, ')
          ..write('auditId: $auditId, ')
          ..write('auditEntityTypeId: $auditEntityTypeId, ')
          ..write('auditParentEntityId: $auditParentEntityId, ')
          ..write('sequenceNo: $sequenceNo, ')
          ..write('entityLevel: $entityLevel, ')
          ..write('isLeafNode: $isLeafNode, ')
          ..write('entityException: $entityException, ')
          ..write('auditEntityName: $auditEntityName, ')
          ..write('barcodeNfc: $barcodeNfc, ')
          ..write('scheduleOccurrenceIds: $scheduleOccurrenceIds, ')
          ..write('entityEndDate: $entityEndDate')
          ..write(')'))
        .toString();
  }
}

class $AuditTableTable extends AuditTable
    with TableInfo<$AuditTableTable, AuditEntity> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditTableTable(this._db, [this._alias]);
  final VerificationMeta _auditEntityIdMeta =
      const VerificationMeta('auditEntityId');
  late final GeneratedColumn<int?> auditEntityId = GeneratedColumn<int?>(
      'audit_entity_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'audit_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _auditEntityTypeIdMeta =
      const VerificationMeta('auditEntityTypeId');
  late final GeneratedColumn<int?> auditEntityTypeId = GeneratedColumn<int?>(
      'audit_entity_type_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _auditParentEntityIdMeta =
      const VerificationMeta('auditParentEntityId');
  late final GeneratedColumn<int?> auditParentEntityId = GeneratedColumn<int?>(
      'audit_parent_entity_id', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _sequenceNoMeta = const VerificationMeta('sequenceNo');
  late final GeneratedColumn<int?> sequenceNo = GeneratedColumn<int?>(
      'sequence_no', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _entityLevelMeta =
      const VerificationMeta('entityLevel');
  late final GeneratedColumn<int?> entityLevel = GeneratedColumn<int?>(
      'entity_level', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _isLeafNodeMeta = const VerificationMeta('isLeafNode');
  late final GeneratedColumn<bool?> isLeafNode = GeneratedColumn<bool?>(
      'is_leaf_node', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_leaf_node IN (0, 1))');
  final VerificationMeta _entityExceptionMeta =
      const VerificationMeta('entityException');
  late final GeneratedColumn<bool?> entityException = GeneratedColumn<bool?>(
      'entity_exception', aliasedName, true,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (entity_exception IN (0, 1))');
  final VerificationMeta _auditEntityNameMeta =
      const VerificationMeta('auditEntityName');
  late final GeneratedColumn<String?> auditEntityName =
      GeneratedColumn<String?>('audit_entity_name', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _barcodeNfcMeta = const VerificationMeta('barcodeNfc');
  late final GeneratedColumn<String?> barcodeNfc = GeneratedColumn<String?>(
      'barcode_nfc', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _scheduleOccurrenceIdsMeta =
      const VerificationMeta('scheduleOccurrenceIds');
  late final GeneratedColumn<String?> scheduleOccurrenceIds =
      GeneratedColumn<String?>('schedule_occurrence_ids', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _entityEndDateMeta =
      const VerificationMeta('entityEndDate');
  late final GeneratedColumn<DateTime?> entityEndDate =
      GeneratedColumn<DateTime?>('entity_end_date', aliasedName, true,
          typeName: 'INTEGER', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        auditEntityId,
        auditId,
        auditEntityTypeId,
        auditParentEntityId,
        sequenceNo,
        entityLevel,
        isLeafNode,
        entityException,
        auditEntityName,
        barcodeNfc,
        scheduleOccurrenceIds,
        entityEndDate
      ];
  @override
  String get aliasedName => _alias ?? 'audit_table';
  @override
  String get actualTableName => 'audit_table';
  @override
  VerificationContext validateIntegrity(Insertable<AuditEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_entity_id')) {
      context.handle(
          _auditEntityIdMeta,
          auditEntityId.isAcceptableOrUnknown(
              data['audit_entity_id']!, _auditEntityIdMeta));
    }
    if (data.containsKey('audit_id')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['audit_id']!, _auditIdMeta));
    }
    if (data.containsKey('audit_entity_type_id')) {
      context.handle(
          _auditEntityTypeIdMeta,
          auditEntityTypeId.isAcceptableOrUnknown(
              data['audit_entity_type_id']!, _auditEntityTypeIdMeta));
    }
    if (data.containsKey('audit_parent_entity_id')) {
      context.handle(
          _auditParentEntityIdMeta,
          auditParentEntityId.isAcceptableOrUnknown(
              data['audit_parent_entity_id']!, _auditParentEntityIdMeta));
    }
    if (data.containsKey('sequence_no')) {
      context.handle(
          _sequenceNoMeta,
          sequenceNo.isAcceptableOrUnknown(
              data['sequence_no']!, _sequenceNoMeta));
    }
    if (data.containsKey('entity_level')) {
      context.handle(
          _entityLevelMeta,
          entityLevel.isAcceptableOrUnknown(
              data['entity_level']!, _entityLevelMeta));
    }
    if (data.containsKey('is_leaf_node')) {
      context.handle(
          _isLeafNodeMeta,
          isLeafNode.isAcceptableOrUnknown(
              data['is_leaf_node']!, _isLeafNodeMeta));
    }
    if (data.containsKey('entity_exception')) {
      context.handle(
          _entityExceptionMeta,
          entityException.isAcceptableOrUnknown(
              data['entity_exception']!, _entityExceptionMeta));
    }
    if (data.containsKey('audit_entity_name')) {
      context.handle(
          _auditEntityNameMeta,
          auditEntityName.isAcceptableOrUnknown(
              data['audit_entity_name']!, _auditEntityNameMeta));
    }
    if (data.containsKey('barcode_nfc')) {
      context.handle(
          _barcodeNfcMeta,
          barcodeNfc.isAcceptableOrUnknown(
              data['barcode_nfc']!, _barcodeNfcMeta));
    }
    if (data.containsKey('schedule_occurrence_ids')) {
      context.handle(
          _scheduleOccurrenceIdsMeta,
          scheduleOccurrenceIds.isAcceptableOrUnknown(
              data['schedule_occurrence_ids']!, _scheduleOccurrenceIdsMeta));
    }
    if (data.containsKey('entity_end_date')) {
      context.handle(
          _entityEndDateMeta,
          entityEndDate.isAcceptableOrUnknown(
              data['entity_end_date']!, _entityEndDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditEntityId};
  @override
  AuditEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditEntity.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditTableTable createAlias(String alias) {
    return $AuditTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $AuditTableTable auditTable = $AuditTableTable(this);
  late final AuditEntityDao auditEntityDao =
      AuditEntityDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [auditTable];
}
