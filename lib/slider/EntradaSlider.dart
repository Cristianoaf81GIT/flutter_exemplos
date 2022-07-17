import "package:flutter/material.dart";


class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();

}

class _EntradaSliderState extends State<EntradaSlider> {
 
 double valor = 0;
 String label = "0"; 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
            title: const Text("Entrada de Dados")
          ),
        body: Padding(
          padding: EdgeInsets.all(60),
          child: Column(                  
            children: [              
              Slider(
                  value: valor,
                  min: 0,
                  max: 10,
                  label: label,
                  divisions: 5,
                  activeColor: Colors.red,
                  inactiveColor: Colors.black26,
                  onChanged: (double novoValor) {
                    setState(() {
                      valor = novoValor;
                      label = novoValor.toString();
                    });
                    print(novoValor);
                  },
                ),
              
              ElevatedButton(
                  child: const Text("Slider"),
                  onPressed: () {
                    print(valor); 
                  }                 
                ),
            ],
          ),
          ),
      );
  }

}

