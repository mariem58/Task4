import 'package:flutter/material.dart';
import 'package:to_do/screens/add_task_screen.dart';
import 'package:to_do/widgets/task_tile.dart';
import 'package:to_do/widgets/tasks_list.dart';
import 'package:to_do/models/task.dart';

import 'package:to_do/screens/add_task_screen.dart';
class TasksScreen extends StatefulWidget {
  //const TasksScreen({Key? key}) : super(key: key);

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List <Task> tasks=[
    Task(name: 'Wake Up'),
    Task(name: 'Feed Dog'),
    Task(name: 'Go To Supermarket'),
    Task(name: 'Visit My Friend'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Container(
        padding:const EdgeInsets.only(top: 60,left: 20,right: 20,bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.playlist_add_check,
                  size: 40,
                color: Colors.black,
                ),
                SizedBox(width: 20,),

              ],
            ),
            Row(
              children: [
                Text('TODAY',style: TextStyle(fontSize: 40,
                  color: Colors.black
                ),
                ),
                SizedBox(width: 150,),
                  IconButton(icon:  Icon(Icons.add_circle_outlined,
                    size: 40,
                    color: Colors.deepOrange,
                  ),
                      onPressed: (){
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context)=>SingleChildScrollView(child:
                      Container(
                        padding: EdgeInsets.only(
                            bottom:MediaQuery.of(context).viewInsets.bottom
                        ),
                          child: AddTaskScreen((newTaskTitle){
                           setState(() {
                             tasks.add(Task(name: newTaskTitle));
                             Navigator.pop(context);
                           });
                          }),
                      ),
                      ),
                    );
                      },

                  ),


              ],
            ),
            Expanded(
              child: Container(child: TasksList(tasks)
              ),
            ),
            Row(
              children: [
                Text('TOMORROW',style: TextStyle(fontSize: 40,
                    color: Colors.black
                ),
                ),
                SizedBox(width:45),
                IconButton(icon:  Icon(Icons.add_circle_outlined,
                  size: 40,
                  color: Colors.deepOrange,
                ),
                  onPressed: (){
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context)=>SingleChildScrollView(child:
                      Container(
                        padding: EdgeInsets.only(
                            bottom:MediaQuery.of(context).viewInsets.bottom
                        ),
                        child: AddTaskScreen((newTaskTitle){
                          setState(() {
                            tasks.add(Task(name: newTaskTitle));
                            Navigator.pop(context);
                          });
                        }),
                      ),
                      ),
                    );
                  },

                ),


              ],
            ),
            Expanded(
              child: Container(child: TasksList(tasks)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

