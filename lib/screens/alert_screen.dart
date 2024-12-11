import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){ //hay que pasar por parametro el context al ser Stateless por que no tiene el contexto. Si se pone full no hace falta
    showDialog(
      barrierDismissible: false,
      context: context,
     builder: ( context ){
      return AlertDialog(
        title: const Text('ALERTA'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: const Column(
          mainAxisSize: MainAxisSize.min, // por defecto esta al maximo
          children: [
            Text('Este es el contenidode la ALERTA'),
            SizedBox(height: 10,),
            FlutterLogo(size: 100,),

          ],
        ),
        actions: [
          TextButton(
          onPressed: () => Navigator.pop(context),
           child: const Text('Cerrar')
           )
        ],
        
      );
     }
     );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: ()=> displayDialog(context) , 
         child: const Padding(
           padding: EdgeInsets.all(20.0),
           child: Text('Mostrar Alerta', style: TextStyle(fontSize: 20),),
         )
         ),
         
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: ()=> Navigator.pop(context)),
    );
  }
}