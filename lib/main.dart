import 'package:exemplos/EntradaRadioButton.dart';
import 'package:exemplos/switch/EntradaSwitch.dart';
import 'package:exemplos/slider/EntradaSlider.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: EntradaRadioButton(),
      // home: EntradaSwitch(),
      home: EntradaSlider(),
    ),
  );
}
