import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/list/list_bloc.dart';
import 'package:todo/bloc/list/list_bloc_event.dart';
import 'package:todo/model/permission_model.dart';

import 'create_permission_widget.dart';

class PermissionsElement extends StatelessWidget {
  const PermissionsElement({
    super.key,
    required this.listId,
    required this.permissions,
  });

  final int listId;
  final Iterable<PermissionModel> permissions;

  @override
  Widget build(BuildContext context) {
    final listBloc = context.read<ListBloc>();

    return ExpansionTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: const Text('Permissions'),
      children: <Widget>[
        for (final permission in permissions)
          Row(
            children: [
              Text(permission.username),
              Expanded(child: Container()),
              GestureDetector(
                onTap: () => listBloc.add(ListBlocEvent.deletePermission(
                  listId,
                  permission.username,
                )),
                child: const Icon(
                  Icons.delete_forever,
                  size: 24.0,
                ),
              ),
            ],
          ),
        CreatePermissionWidget(
          listId: listId,
        ),
      ],
    );
  }
}
