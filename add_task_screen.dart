import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
  //const AddTaskScreen({Key? key}) : super(key: key);
final Function addTaskCallback;
AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30,
                color:Colors.deepOrange,
                fontWeight: FontWeight.bold,
              )
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTaskTitle=newText;
            },
          ),
          SizedBox(height: 30,),
          TextButton(onPressed: (){
            addTaskCallback(newTaskTitle);
          },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              primary:  Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

