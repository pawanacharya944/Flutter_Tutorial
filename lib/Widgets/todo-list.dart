import 'package:flutter/material.dart';

class MyTodoList extends StatefulWidget {
  const MyTodoList({super.key});

  @override
  State<MyTodoList> createState() => _MyTodoListState();
}

class _MyTodoListState extends State<MyTodoList> {
  // list to hold the to-do items
  final List<String> _todos = [];

  // text editing controller to manage the input field
  final TextEditingController _controller = TextEditingController();

  // method to add a new to-do item
  void _addTodo() {
    // check if the input is not empty
    if (_controller.text.isNotEmpty) {
      setState(() {
        // add the new item to the list
        _todos.add(_controller.text);

        // clear the input field after adding
        _controller.clear();
      });
    }
  }

  // method to remove a to-do item by index
  void _removeTodo(int index) {
    setState(() {
      // remove the item from the list at the specified index
      _todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'To-Do List',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              style: const TextStyle(fontSize: 26),
              decoration: InputDecoration(
                labelText: 'Enter a new task',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                suffixIcon: IconButton(
                  onPressed: _addTodo,
                  icon: const Icon(Icons.add, color: Colors.blue),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) {
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  elevation: 4,
                  child: ListTile(
                    title: Text(
                      _todos[index], // display the to-do item text
                      style: const TextStyle(fontSize: 20),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _removeTodo(
                          index), // call remove todo method when pressed
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.text.isNotEmpty) {
            // check if input is not empty before adding
            _addTodo(); // call addTodo method when pressed
          }
        },
        tooltip: 'Add Task',
        backgroundColor: Colors.amber, // tooltip for the floating action button
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
