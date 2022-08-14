import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WOW Pizza"),
        centerTitle: true,
      ),
      drawer: Drawer(
        width: 300,
        backgroundColor: Colors.orangeAccent,
        child: ListView(
          children: [
            DrawerHeader(
              child: Image(
                image: AssetImage("images/home-removebg-preview.png"),
              ),
            ),
            ListTile(
              title: Text(
                "vegetarian pizza",
              ),
              leading: Image(
                image:
                    AssetImage("images/vegetarian-pizza-removebg-preview.png"),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text(
                "Cheese pizza",
              ),
              leading: Image(
                image: AssetImage("images/cheese-pizza--removebg-preview.png"),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text(
                "Fries",
              ),
              leading: Image(
                image: AssetImage("images/Fries-removebg-preview.png"),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ButtonBar(
              children: [],
            ),
            Image(
              image: AssetImage("images/home-removebg-preview.png")
              ,width: 400,
              height: 400,
            ),
            Text(
              "Hi,I'm the Pizza Assistantn,",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "what can I help you order?",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.orange,
        onTap: (int index) {
          setState(
            () {
              _index = index;
              //Navigator.push(context, MaterialPageRoute(builder: (context)=> const  setting()));
              if (index == 0) {
                Navigator.pushNamed(context, "0");
              } else if (index == 1) {
                Navigator.pushNamed(context, "1");
              } else if (index == 2) {
                Navigator.pushNamed(context, "2");
              }
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.facebook),
            label: "Facebook",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.instagram),
            label: "Instagram",
          ),
        ],
      ),
    );
  }
}
