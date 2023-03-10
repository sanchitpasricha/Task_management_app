import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'A task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TextCheckBox(
          checkboxState: isChecked,
          toogleCheckBoxState: (bool? checkBoxState) {
            setState(() {
              isChecked = checkBoxState ?? false;
            });
          }),
    );
  }
}

class TextCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) toogleCheckBoxState;

  TextCheckBox(
      {required this.checkboxState, required this.toogleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toogleCheckBoxState,
    );
  }
}
