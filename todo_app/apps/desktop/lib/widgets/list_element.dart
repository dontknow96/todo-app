import 'package:flutter/material.dart';
import 'package:todo/model/list_model.dart';

class ListElement extends StatelessWidget {
  const ListElement(
      {super.key,
      required this.list,
      required this.onIconClick,
      required this.iconData,
      required this.additionalContent});

  final ListModel list;
  final Function()? onIconClick;
  final IconData? iconData;
  final Iterable<Widget> additionalContent;

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
            onTap: onIconClick,
            child: Icon(
              iconData,
              size: 24.0,
            ),
          ),
        ],
      ),
      children: <Widget>[
        ListTile(title: Text('Owner: ${list.ownerusername}')),
        ListTile(title: Text('Category: ${list.category}')),
        ListTile(title: Text(list.description)),
        for (final widget in additionalContent) widget,
      ],
    );
  }
}
