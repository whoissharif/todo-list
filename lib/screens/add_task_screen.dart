import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  
  String newTaskTitle;

  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: <Widget>[
            Text('Add Task'),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newValue){
                newTaskTitle = newValue;
              },
            ),
            FlatButton(
              child: Text('Add'),
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              onPressed: (){
                addTaskCallback(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
