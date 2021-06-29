import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<dynamic> lst = ["Coding", "Gym", "Study"];

  var output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.green[300],
              margin: EdgeInsets.only(top: 15),
              child: ListTile(
                title: Text(
                  "${lst[index]}",
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Container(
                  width: 50,
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Edit Items"),
                                    content: TextField(
                                      onChanged: (value) {
                                        output = value;
                                      },
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              lst.replaceRange(
                                                  index, index + 1, {output});
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("Edit")),
                                    ],
                                  );
                                });
                          },
                          child: Icon(Icons.edit)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              lst.removeAt(index);
                            });
                          },
                          child: Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Add Items"),
                  content: TextField(
                    onChanged: (value) {
                      output = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        onPressed: () {
                          setState(() {
                            lst.add(output);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text("Add"))
                  ],
                );
              });
        },
        child: Text(
          "Add",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
