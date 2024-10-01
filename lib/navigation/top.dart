import 'package:flutter/material.dart';

class TopScree extends StatelessWidget {
const TopScree({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top'), 
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresar a la pantalla anterior
          },
        ),
      ),
      
      body: const Center(
        child: Text('Pantalla de Top'),
      ),
       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue, foregroundColor: Colors.amber,
        onPressed:() => Navigator.pushNamed(context, '/reservations'), 
        child: Icon(Icons.event),
      ),
    );
  }
}