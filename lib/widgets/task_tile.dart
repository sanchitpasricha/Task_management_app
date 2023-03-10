import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('A task'),
      trailing: TextCheckBox(),
    );
  }
}

class TextCheckBox extends StatefulWidget {
  @override
  State<TextCheckBox> createState() => _TextCheckBoxState();
}

class _TextCheckBoxState extends State<TextCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue!;
        });
      },
    );
  }
}
