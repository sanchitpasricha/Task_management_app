import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('A task'),
      trailing: Checkbox(
        value: false,
        onChanged: null,
      ),
    );
  }
}
