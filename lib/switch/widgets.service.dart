import 'package:flutter/material.dart';

const appBarTitle = Text("Entrada de Dados");

final AppBar entradaSwitchAppBar = AppBar(title: appBarTitle);
const bottomAppBar = BottomAppBar(
  color: Colors.blue,
);

SwitchListTile newSwitchButton(
    bool boolValue, void Function(bool) handleChange, String text) {
  Text swtTitle = Text(text);
  return SwitchListTile(
      title: swtTitle, value: boolValue, onChanged: handleChange);
}

/// creates a new ElevatedButton
ElevatedButton newElevatedButton(
  void Function() handlePress,
  String text,
) {
  Text buttonText = Text(text);
  return ElevatedButton(onPressed: handlePress, child: buttonText);
}

Column newColumn(List<Widget> elements) {
  return Column(
    children: elements,
  );
}
