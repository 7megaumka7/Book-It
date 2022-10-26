import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.amberAccent
  ),
  home: Home(),
  ),
);
class  Home extends StatefulWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  late String user_to_do;
  var todo_list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todo_list.addAll(["Buy milk, Contester week 6 def"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text("Plan for today"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:
      ListView.builder(
          itemCount: todo_list.length,
          itemBuilder: (BuildContext context,int index) {
            return Dismissible(key: Key(todo_list[index]),
                child: Card(
                  child: ListTile(title:Text(todo_list[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle_outline,
                      color: Colors.deepOrange,),
                      onPressed: () {
                        setState(() {
                          todo_list.removeAt(index);
                        });
                      },
                  ),
                ),
              ),

              onDismissed: (direction) {
              setState(() {
                todo_list.removeAt(index);
                });
              },
            );
          }
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
    showDialog(context: context, builder: (BuildContext context) {
    return AlertDialog(
    title: Text("Add a new deal"),
    content: TextField (
    onChanged: (String value) {
    user_to_do = value;
          },
        ),
      actions: [
        ElevatedButton(
          onPressed: () {
          setState(() {
            todo_list.add(user_to_do);
          });

          Navigator.of(context).pop();
            },

          child:
          Text('Add'),
          )
        ],
      );
    });
  },
      child:
          Icon(Icons.add_circle_outline,
          color: Colors.deepOrange),
          backgroundColor: Colors.white,
      ),
    );
  }
}




