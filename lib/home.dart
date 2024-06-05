import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  HomePageState1 createState() => HomePageState1();
}

class HomePageState1 extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('EDIT'),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              // HOMEPAGE SLIDER SHOW WIDGET
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  shape: BoxShape.rectangle,
                  color: Colors.redAccent,
                ),
                margin: const EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                height: 160,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const <Widget>[
                    Text(
                      "HOME PICTURE SLIDE SHOW",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // BUTTON GRID LAYOUT
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(10.0),
                  // GRID DELEGATE
                  childAspectRatio: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    GestureDetector(
                      onTap: () => {_launchURL("https://www.facebook.com")},
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          shape: BoxShape.rectangle,
                          color: Colors.redAccent,
                        ),
                        margin: const EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: const <Widget>[
                            Text(
                              "ITEM 1",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {_launchURL("https://www.google.com")},
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          shape: BoxShape.rectangle,
                          color: Colors.redAccent,
                        ),
                        margin: const EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: const <Widget>[
                            Text(
                              "ITEM 2",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {_launchURL("https://www.google.com")},
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          shape: BoxShape.rectangle,
                          color: Colors.redAccent,
                        ),
                        margin: const EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: const <Widget>[
                            Text(
                              "ITEM 2",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  scrollDirection: Axis.vertical,
                ),
              )
            ],
          ),
        ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EDIT'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: <Widget>[
          // HOMEPAGE SLIDER SHOW WIDGET
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              shape: BoxShape.rectangle,
              color: Colors.redAccent,
            ),
            margin: const EdgeInsets.all(15.0),
            width: MediaQuery.of(context).size.width,
            height: 160,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: const <Widget>[
                Text(
                  "HOME PICTURE SLIDE SHOW",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.call),
                      onPressed: () {
                        _launchURL('tel:+917001234');
                      },
                    ),
                    const Text('Call'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.message),
                      onPressed: () {
                        _launchURL('sms:+917001234');
                      },
                    ),
                    const Text('SMS'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.mail),
                      onPressed: () {
                        _launchURL('http://www.google.com');
                      },
                    ),
                    const Text('Mail'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.share),
                      onPressed: () {
                        _launchURL('whatsapp://send?text=Hello');
                      },
                    ),
                    const Text('Share'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.save),
                      onPressed: () {
                        _launchURL(
                            'https://www.google.com/maps/search/?api=1&query=Google');
                      },
                    ),
                    const Text('Save'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.print),
                      onPressed: () {
                        _launchURL(
                            'https://www.google.com/maps/search/?api=1&query=Google');
                      },
                    ),
                    Text('Print'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
