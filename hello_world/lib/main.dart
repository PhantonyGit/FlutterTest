import 'package:flutter/material.dart';
import 'package:hello_world/login.dart';
import 'package:hello_world/swipe.dart';
import 'nav-drawer.dart';
import 'login.dart';
import 'additional.dart';
import 'swipe.dart';

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

  Icon searchIcon = Icon(Icons.search);
  Widget titleApp = Text("Project X");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //space
      appBar: AppBar(
        title: titleApp,
        actions: <Widget>[
          //iconsearch
          IconButton(
              onPressed: () {
                setState(() {
                  if (this.searchIcon.icon == Icons.search) {
                    this.searchIcon = Icon(Icons.cancel);
                    this.titleApp = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Search Item"),
                      style: TextStyle(color: Colors.white),
                    );
                  } else {
                    this.searchIcon = Icon(Icons.search);
                    this.titleApp = Text("Project X");
                  }
                });
              },
              icon: Icon(Icons.search)),
          //iconmore
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
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
            ),
            ListTile(
              title: Text('Device'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => new Device()));
              },
            ),
            ListTile(
              title: Text("Information"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => new Info()));
              },
            ),
            ListTile(
              title: Text("Animation"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => new animated()));
              },
            ),
            ListTile(
              title: Text("Silinder"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => new page()));
              },
            ),
            new Divider(
              color: Colors.blue,
              height: 5.0,
            ),
            ListTile(
              title: Text(
                "Copy Right @phantony",
                style: TextStyle(color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
      //space
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //gambar
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height / 2.4,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  image: DecorationImage(
                      image: AssetImage('images/luffy.jpg'), fit: BoxFit.fill)),
            ),
            //text
            Text(
              "Play your own bored chess",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Do you think chess is bored?, well you still don't know until you press this button",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            //tombol
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => new Chess()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: const EdgeInsets.all(0.0),
                child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: <Color>[Colors.green, Colors.pink]),
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                    ),
                    constraints:
                        const BoxConstraints(minWidth: 150.0, minHeight: 36.0),
                    child: const Text(
                      "Press",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            // logo brand
          ],
        ),
      ),
      //space
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
                backgroundColor: Colors.redAccent),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Add'),
              backgroundColor: Colors.deepPurpleAccent,
            ),
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
