import 'package:flutter/material.dart';
import 'package:todo/model/list_model.dart';

class ListElement extends StatelessWidget {
  const ListElement({
    super.key,
    required this.list,
    required this.goToList,
  });

  final ListModel list;
  final void Function(int id) goToList;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Row(
        children: [
          Expanded(child: Container()),
          Text(list.title),
          Expanded(child: Container()),
          GestureDetector(
            onTap: () => goToList(list.id),
            child: const Icon(
              Icons.navigate_next,
              size: 24.0,
            ),
          ),
        ],
      ),
      children: <Widget>[
        ListTile(title: Text('Owner ${list.ownerusername}')),
        ListTile(title: Text(list.description)),
      ],
    );
  }
}
