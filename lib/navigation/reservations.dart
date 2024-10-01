import 'package:flutter/material.dart';

class ReservationsScreen extends StatelessWidget {
const ReservationsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Reservations'),),
      body: const Center(
        child: Text('Pantalla de reservaciones'),
      ),
       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue, foregroundColor: Colors.amber,
        onPressed:() => Navigator.pushReplacementNamed(context, '/profile'), 
        child: Icon(Icons.person),
      ),
    );
  }
}