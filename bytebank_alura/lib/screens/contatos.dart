import 'package:flutter/material.dart';

import 'forms.dart';

class Contatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Contatos"),
        backgroundColor: Colors.black87,
      ),
      body: ListView(children: [
        Card(
          child: ListTile(
              title: Text("Gabriela", style: TextStyle(fontSize: 24.0)),
              subtitle: Text("100000-8", style: TextStyle(fontSize: 24.0))),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => Forms(),
                ),
              )
              .then((newContact) => print(newContact.toString()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green[300],
      ),
    );
  }
}
