import 'package:bytebank_alura/screens/contatos.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: Image.asset("assets/logo2.png")),
            Material(
              color: Colors.white,
              child: InkWell(
                // como se fosse um gesture detector do material design
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Contatos()));
                },
                child: Container(
                  height: 60,
                  width: 100,
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.people, color: Colors.green),
                      Text('Contatos')
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
