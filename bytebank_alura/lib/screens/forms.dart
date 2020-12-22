import 'package:bytebank_alura/models/contact.dart';
import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  // controladores para pegar a informaçao
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accountNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Contatos"),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 200,
            color: Colors.white,
            child: Column(
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  keyboardType: TextInputType.name,
                ),
                TextField(
                  controller: _accountNumberController,
                  decoration: InputDecoration(
                    labelText: 'Conta corrente',
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  keyboardType: TextInputType.number,
                ),
                Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  child: RaisedButton(
                    onPressed: () {
                      final String name = _nameController.text;
                      final int accountNumber =
                          int.tryParse(_accountNumberController.text);
                      final Contact newContact = Contact(name, accountNumber);
                      Navigator.pop(context, newContact);
                    },
                    child: Text(
                      'CRIAR CONTATO',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
