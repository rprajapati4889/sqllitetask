import 'package:empsqllte/feature/crud-on-audit_table/domain/usecases/add_audit_table.dart';
import 'package:empsqllte/feature/crud-on-audit_table/domain/usecases/delete_audit_table.dart';
import 'package:get_it/get_it.dart';

import 'feature/crud-on-audit_table/data/datasources/daos/audit_entity_dao.dart';
import 'feature/crud-on-audit_table/data/datasources/database/audit_entity_db.dart';
import 'feature/crud-on-audit_table/data/repository/audit_table_repository_impl.dart';
import 'feature/crud-on-audit_table/domain/repository/audit_entity_repository.dart';
import 'feature/crud-on-audit_table/domain/usecases/get_audit_entities_table.dart';
import 'feature/crud-on-audit_table/domain/usecases/update_audit_table.dart';
import 'feature/crud-on-audit_table/presentation/bloc/audit_entities_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
        () => AuditEntitiesBloc(
      sl(),
      sl(),
      sl(),
      sl(),
    ),
  );
  // Use cases
  sl.registerLazySingleton(() => GetAuditEntities(sl()));
  sl.registerLazySingleton(() => AddAuditEntities(sl()));
  sl.registerLazySingleton(() => DeleteAuditEntity(sl()));
  sl.registerLazySingleton(() => UpdateAuditEntities(sl()));

// Repository
  sl.registerLazySingleton<AuditEntityRepository>(
        () => AuditTableRepositoryImpl(appDatabase: sl()),
  );
  sl.registerSingleton(AppDatabase(openConnection()));
  // Dio client
  sl.registerSingleton<AuditEntityDao>(AuditEntityDao(sl()));


}
