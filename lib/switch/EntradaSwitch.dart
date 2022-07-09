// ignore_for_file: file_names, avoid_print

import "package:flutter/material.dart";
import 'package:exemplos/switch/widgets.service.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _notificationsValue = false;
  bool _autoLoadPicturesValue = false;

  void changeNotificationsValue(bool? newValue) {
    if (newValue != null) {
      setState(() {
        _notificationsValue = newValue;
      });
    }
  }

  void changeAutoLoadPicturesValue(bool? newValue) {
    if (newValue != null) {
      setState(() {
        _autoLoadPicturesValue = newValue;
      });
    }
  }

  void handleSave() {
    print("Notificações: $_notificationsValue");
    print("Carregar Imagens Automáticamente: $_autoLoadPicturesValue");
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> entradaSwitchWidgets = [];
    const notificationText = "Entrada de Dados";
    const autoLoadText = "Carregar Imagens Automáticamente";

    var notificationsSwt = newSwitchButton(
        _notificationsValue, changeNotificationsValue, notificationText);

    var autoLoadPicsSwt = newSwitchButton(
        _autoLoadPicturesValue, changeAutoLoadPicturesValue, autoLoadText);

    var saveButton = newElevatedButton(handleSave, "Salvar");

    entradaSwitchWidgets.add(notificationsSwt);
    entradaSwitchWidgets.add(autoLoadPicsSwt);
    entradaSwitchWidgets.add(saveButton);

    Column bodyElements = newColumn(entradaSwitchWidgets);

    return Scaffold(
      appBar: entradaSwitchAppBar,
      body: bodyElements,
      bottomNavigationBar: bottomAppBar,
    );
  }
}
