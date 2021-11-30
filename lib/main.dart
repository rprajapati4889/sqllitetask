import 'package:empsqllte/feature/crud-on-audit_table/presentation/bloc/audit_entities_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/crud-on-audit_table/presentation/pages/home_page.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<AuditEntitiesBloc>()..add(GetAllAuditEntityEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Audit Entities',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepOrange, //the color of your Appbar will be blue
          ).copyWith(
            secondary: Colors.redAccent,
//your accent color-floating action will appear green
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
