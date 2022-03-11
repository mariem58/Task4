import 'package:flutter/material.dart';
import 'package:to_do/models/task.dart';
import 'package:to_do/widgets/task_tile.dart';
import 'package:to_do/models/task.dart';

class TasksList extends StatefulWidget {
  final List <Task> tasks;

   TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length ,
        itemBuilder: (context,index){
      return TaskTile(
        isChecked: widget.tasks[index].isDone ,
        taskTitle: widget.tasks[index].name,
        checkboxChange: (newValue){
          setState(() {
            widget.tasks[index].doneChange();
          });
        },
      );

    });
  //  return ListView(
    //  children: [
   //  TaskTile(taskTitle: tasks[0].name,
    //isChecked: tasks[0].isDone,
    // ),
     //   TaskTile(taskTitle: tasks[1].name,
     //     isChecked: tasks[1].isDone,
    //  ),
    //    TaskTile(taskTitle: tasks[2].name,
    //      isChecked: tasks[2].isDone,
    //    ),
    //  TaskTile(taskTitle: tasks[3].name,
    //      isChecked: tasks[3].isDone,
    //   ),
    //    TaskTile(taskTitle: tasks[4].name,
    //      isChecked: tasks[4].isDone,
    //    ),

     // ],
    //);
  }
}
