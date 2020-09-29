import 'package:flutter/material.dart';
import 'nav-drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phantony.Flutter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int CurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //space
      appBar: AppBar(
        title: Text("Project X"),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Phantony'),
              accountEmail: new Text("Phantony@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.blue,
              ),
            ),
            new ListTile(
              title: new Text('About Me'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new AboutMe()));
              },
            )
          ],
        ),
      ),
      //space
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: CurrentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.pink),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                title: Text('Add'),
                backgroundColor: Colors.deepPurpleAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.attachment),
                title: Text('Attach'),
                backgroundColor: Colors.green),
          ],
          onTap: (index) {
            setState(() {
              CurrentIndex = index;
            });
          }),
    );
  }
}
