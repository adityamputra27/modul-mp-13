import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ListView'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text("Battery Full"),
              subtitle: Text("The battery is full."),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
              ),
              trailing: Icon(
                Icons.info,
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Anchor"),
              subtitle: Text("Lower the anchor."),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
              ),
              trailing: Icon(
                Icons.info,
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Alarm"),
              subtitle: Text("This is the time."),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
              ),
              trailing: Icon(
                Icons.info,
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Ballot"),
              subtitle: Text("Cast your vote."),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
              ),
              trailing: Icon(
                Icons.info,
              ),
            ),
          )
        ],
      ),
    );
  }
}
