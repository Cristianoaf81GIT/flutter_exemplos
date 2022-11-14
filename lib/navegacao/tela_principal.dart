import 'package:flutter/material.dart';
import 'package:exemplos/navegacao/tela_secundaria.dart';


class TelaPrincipal extends StatefulWidget {
  
 const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              child:const Padding(
               padding: EdgeInsets.all(15), 
                child:Text("Ir para a segunda tela"),                
               ),              
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TelaSecundaria(valor: "Teste",)
                    )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

