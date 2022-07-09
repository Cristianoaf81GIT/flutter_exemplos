// ignore_for_file: file_names

import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String _escolhaUsuario = "";

  void changeRadioOption(String? escolha) {
    if (escolha != null) {
      setState(() {
        _escolhaUsuario = escolha;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Entrada de Dados")),
      body: Column(children: [
        RadioListTile(
            title: const Text("Masculino"),
            value: "M",
            groupValue: _escolhaUsuario,
            onChanged: changeRadioOption),

        RadioListTile(
            title: const Text("Feminino"),
            value: "F",
            groupValue: _escolhaUsuario,
            onChanged: changeRadioOption),

        ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              print("Resultado: $_escolhaUsuario");
            },
            child: const Text("Salvar"))

        // Text("Masculino"),
        // Radio(
        //     value: "M",
        //     groupValue: _escolhaUsuario,
        //     onChanged: (String? escolha) {
        //       if (escolha != null) {
        //         setState(() {
        //           _escolhaUsuario = escolha;
        //         });
        //       }
        //       print("Resultado $escolha");
        //     }),
        // Text("Feminino"),
        // Radio(
        //     value: "F",
        //     groupValue: _escolhaUsuario,
        //     onChanged: (String? escolha) {
        //       if (escolha != null) {
        //         setState(() {
        //           _escolhaUsuario = escolha;
        //         });
        //       }
        //       print("Resultado $escolha");
        //     })
      ]),
    );
  }
}
