import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

class Instagram extends StatefulWidget {
  const Instagram({
    Key? key,
  }) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  int _index = 2;
  //webapp settings
  var loadingPercentage = 0;
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WOW Pizza"),
        centerTitle: true,
      ),
      drawer: Drawer(
        width: 200,
        //backgroundColor: Colors.orangeAccent,
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
              onTap: () => Navigator.pushNamed(context, "1"),
            ),
            ListTile(
              title: Text(
                "Cheese pizza",
              ),
              leading: Image(
                image: AssetImage("images/cheese-pizza--removebg-preview.png"),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.pushNamed(context, "2"),
            ),
            ListTile(
              title: Text(
                "French fries",
              ),
              leading: Image(
                image: AssetImage("images/Fries-removebg-preview.png"),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.pushNamed(context, "3"),
            ),
          ],
        ),
      ),
      body: Stack(children: [
        WebView(
          initialUrl: 'https://www.instagram.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
        ),
        if (loadingPercentage < 100)
          LinearProgressIndicator(
            value: loadingPercentage / 100.0,
            minHeight: 10,
            color: Colors.red,
          ),
      ]),
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
                Navigator.pushNamed(context, "4");
              } else if (index == 2) {
                Navigator.pushNamed(context, "5");
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
