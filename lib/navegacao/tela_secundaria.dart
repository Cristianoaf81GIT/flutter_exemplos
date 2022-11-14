import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {

  final String valor;

  const TelaSecundaria({super.key,required this.valor});

  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  late String _value;

  @override 
  void initState() {
     super.initState();
    _value =  widget.valor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Secundaria"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding:const  EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text("Segunda tela! valor passado: $_value")
          ],
        ),
      ),
    );
  }
}
