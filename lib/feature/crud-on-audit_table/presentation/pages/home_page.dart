import 'package:empsqllte/feature/crud-on-audit_table/presentation/bloc/audit_entities_bloc.dart';
import 'package:empsqllte/feature/crud-on-audit_table/presentation/widgets/audit_entity_screen.dart';
import 'package:empsqllte/feature/crud-on-audit_table/presentation/widgets/loading_widget.dart';
import 'package:empsqllte/feature/crud-on-audit_table/presentation/widgets/message_disp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Audit Entity'),
      ),
      body: Column(
        children: [
          Expanded(child: _buildState(context))],
      ),
    );
  }


  Widget _buildState(BuildContext context) {
    return BlocBuilder<AuditEntitiesBloc, AuditEntitiesState>(
        builder: (context, state) {
          if (state is Empty) {
            return const MessageDisplay(message: 'start');
          } else if (state is Loading) {
            return const LoadingWidget();
          } else if (state is Loaded) {
            return AuditEntityScreen(
              auditEntitiesList: state.auditEntitiesList!);
          } else if (state is Error) {
            return MessageDisplay(message: state.message);
          }
          return Container();
        });
  }
}
