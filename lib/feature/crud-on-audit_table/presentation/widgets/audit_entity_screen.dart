import 'package:empsqllte/feature/crud-on-audit_table/data/datasources/database/audit_entity_db.dart';
import 'package:empsqllte/feature/crud-on-audit_table/presentation/bloc/audit_entities_bloc.dart';
import 'package:empsqllte/feature/crud-on-audit_table/presentation/widgets/show_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:jiffy/jiffy.dart';



class AuditEntityScreen extends StatefulWidget {
  final List<AuditEntity?> auditEntitiesList;

  const AuditEntityScreen({Key? key, required this.auditEntitiesList}) : super(key: key);


  @override
  State<AuditEntityScreen> createState() => _AuditEntityScreenState();
}

class _AuditEntityScreenState extends State<AuditEntityScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget.auditEntitiesList.isEmpty) {
      _onAddAuditEntity(context);
    }
    return ListView.builder(
      itemCount: widget.auditEntitiesList.length,
      itemBuilder: (_, index) {
        final itemAuditEntity = widget.auditEntitiesList[index];
        return _buildListItem(context,itemAuditEntity);
      },
    );
  }

  Widget _buildListItem(BuildContext context,AuditEntity? auditEntities) {
    return Card(
      child: Slidable(
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              label: 'Edit',
              backgroundColor: Colors.green,
              icon: Icons.edit,
              onPressed: (_) => _onEditAuditEntity(context,auditEntities),
            ),
            SlidableAction(
              label: 'Delete',
              backgroundColor: Colors.red,
              icon: Icons.delete,
              onPressed: (_) => _onDeleteAuditEntity(context,auditEntities),
            ),
          ],
        ),
        child: ListTile(
            title: Text(auditEntities!.auditEntityName.toString(),
              style: TextStyle(fontStyle: FontStyle.italic,color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 20)),
            subtitle: Text(Jiffy(auditEntities.entityEndDate).format("MMMM do yyyy, h:mm:ss a").toString(),
              style: TextStyle(fontStyle: FontStyle.italic,color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 15,overflow: TextOverflow.ellipsis)),
          leading: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }

  Future<void> _onDeleteAuditEntity(BuildContext context, AuditEntity? auditEntities) async {
    final didRequestDelete = await showAlertDialog(context,
        defalutActionText: 'Cancel',
        cancleActiontext: 'Ok',
        content: 'Are you sure  you want to delete this item?',
        title: 'Delete Audit Entity',
        );
    if(didRequestDelete == true)
    {
      BlocProvider.of<AuditEntitiesBloc>(context).add(DeleteAuditEntityEvent(auditEntities!));
    }
  }

  Future<void> _onEditAuditEntity(BuildContext context, AuditEntity? auditEntities) async {
    var values = auditEntities!.auditEntityName.toString();
    final didRequestDelete = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Update Audit Entity',style: TextStyle(color: Colors.purple),),
        content: TextField(
          controller: TextEditingController()..text = values,
          onChanged:(value) {
            setState(() {
              values = value;
            });
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Update',style: TextStyle(color: Colors.purple)),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel',style: TextStyle(color: Colors.purple)),
          ),
        ],
      ),
    );
    if(didRequestDelete == true)
    {
      BlocProvider.of<AuditEntitiesBloc>(context).add(UpdateAuditEntityEvent(auditEntities.copyWith(auditEntityName: values)));
    }
  }
  void _onAddAuditEntity(BuildContext context) {
    BlocProvider.of<AuditEntitiesBloc>(context)
        .add(const AddAuditEntityEvent());
  }
}


