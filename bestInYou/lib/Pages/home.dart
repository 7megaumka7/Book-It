/*stful- sozdat maket  classa

//  Scaffold, Container - container for lots of widgets
//  appBar - head of the app
//  body - telo
//  class Center in dody - make text in center of the page
//  child,actions -podobject
//  SafeArea - sozdanie widgetov v bezopasnoy zone
//  CircleAvatar - imge inside a circle
//  backgroundImage(NetworkImage) - take an image from Network
//  Row (100% of screen width,Column (don` take 100% of screeen width) - sozdat` ryadi and stolbtci
//  mainAxisAlignment - raspolojenie widgetov vnutri setki
//  SizedBox - for taking some parametrs(height,weight)
//  Padding(padding: EdgeInsets.only()) - vneshnie otstupi
//  StatefulWidget - vizivaetsya lampochkoi pri najatii na "class" (nujen dlya sostoyaniy)

Dismissble - udalenie punkta swaipom
Card - rabota s opredelennim objectom
ListTile- vivod text
initState - napolnenie spiska
direction - napravlenie udalenia
setState - control sostoyaniya objectov
showDialog - vsplivaychee okno
AlertDialog - vizivaet vsplivayshee okno
textField - sozdat pole texta
onChanged - deystviya pri izmenenii
actions - dobavlenie button
Navigator.of (context).pop() -zakryt vse vsplyvaushie okna
Navigator.of(context).push - viezhauchee menu
MaterialPageRoute - tip menu
WidgetsFlutterBinding.ensureInitialized - zapusk bazy dannih
await Firebase.initializeApp(); - zapusk bazy dannih
*/

import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.amberAccent,
      ),
    home: Home(),
    ),
  );
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  late String _userToDo;
  List toDoList =[];
  @override
  void initState() {
    super.initState();

    toDoList.addAll(['Discrete Math HW1', 'Psychology Presentation','Week5 Defence']);
  }

  void _menuOpen() {
Navigator.of(context).push(
  MaterialPageRoute(builder: (BuildContext){
return Scaffold(
  appBar: AppBar(title: Text("Menu"),),
  body: Row(
    children: [

      ElevatedButton(onPressed: () {
        Navigator.pop(context);
        Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
      }, child: Text('return back')),
      Padding(padding: EdgeInsets.only(left:15),),
      Text('This is menu'),
          ],
        )
      );

  })
);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('What to do'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: _menuOpen,
              icon: Icon(Icons.menu)),
        ],
      ),
      body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (BuildContext context, int index){

            return Dismissible(key: Key(toDoList[index]),
                child: Card(
                    child: ListTile(
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete_forever,
                            color: Colors.red,
                          ),    onPressed: () {
                                  setState(() {
                                    toDoList.removeAt(index);
                                 }
                              );
                            },
                        ),
                        title: Text(toDoList[index])
                    )
                ),
                onDismissed: (direction) {
                  //if (direction == DismissDirection.startToEnd)
                  setState(() {
                    toDoList.removeAt(index);
                    }
                  );
                }
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            showDialog(context: context, builder:(
                BuildContext context) {
              return AlertDialog (
                title: Text('Add a new deal'),
                content: TextField (
                  onChanged:(String value){
                    setState(() {
                      _userToDo = value;
                      }
                    );
                  },
                ),
                actions: [
                  ElevatedButton
                    (onPressed: () {
                        setState(() {
                          toDoList.add(_userToDo);
                            Navigator.of (context).pop();
                          }
                        );
                     }, child: Text('Add'))
                    ],
                  );
                },
              );
            },
          child:
          Icon(
            Icons.add_circle_outline,
              color: Colors.red,
          )
      ),
    );
  }
}
