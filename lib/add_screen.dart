import 'package:flutter/material.dart';
import 'package:project4/home_screen.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final List<String> todos = [];
  final TextEditingController desciptionController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController textController = TextEditingController();

  void addTodoItem(String task) {
    if (task.isNotEmpty) {
      setState(() {
        todos.add(task);
      });
      textController.clear();
    }
  }

  void add() {
    addTodoItem(textController.text);
    addTodoItem(timeController.text);
    addTodoItem(titleController.text);
    addTodoItem(desciptionController.text);
  }

  void removeTodoItem(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  Widget buildTodoItem(String todoText, int index) {
    return ListTile(
      title: Text(todoText),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => removeTodoItem(index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(49, 72, 156, 0.718),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "Create new Task",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 25),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 20),
                          child: Image.asset("assets/images/photo.jpg"),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            "From",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 20),
                          child: Text(
                            "To",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 128,
                          height: 40,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: TextField(
                            controller: textController,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 128,
                          height: 40,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: TextField(
                            controller: timeController,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 30, top: 20),
                            child: Text(
                              "Title",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            controller: titleController,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 170),
                      child: Text(
                        "Desciption",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 300,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            controller: desciptionController,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: todos.length,
                        itemBuilder: (context, index) {
                          return buildTodoItem(todos[index], index);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState(() {
              add();
            });
          },
          child: Icon(Icons.add)),
    );
  }
}
