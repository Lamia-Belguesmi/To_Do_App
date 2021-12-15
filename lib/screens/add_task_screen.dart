import 'package:flutter/material.dart';
import 'package:to_do_app/models/task.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State {
  TextEditingController tasktext = TextEditingController();

  @override
  void dispose() {
    tasktext.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
                color: Color(0xFFA0C20C),
              ),
            ),
            TextField(
              controller: tasktext,
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xDA574B25),
                shape:
              RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
                side: BorderSide(color: Colors.black),
            ),
      ),
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFFA0C20C),
                ),
              ),
              onPressed: () {
                // call the value that controller contain by using ex: controllername.text
                Provider.of<TaskData>(context, listen: false)
                    .addTask(tasktext.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
