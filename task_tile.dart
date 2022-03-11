import 'package:flutter/material.dart';
import 'package:to_do/widgets/tasks_list.dart';
class TaskTile extends StatelessWidget {


  final bool isChecked;
  final String taskTitle;

  final void Function(bool) checkboxChange;

TaskTile({
  this.isChecked,
   this.taskTitle,
  this.checkboxChange,
});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,

        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:Checkbox(
      activeColor: Colors.deepOrange,
    value:isChecked,
    onChanged:checkboxChange,
    ),

    );
  }
}

