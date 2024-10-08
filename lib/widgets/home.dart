import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/content_column.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            ContentColumn(
              title: 'Primer Columna',
              description: 'Primer Parrafo',
            ),
            ContentColumn(
              title: 'Segunda Columna',
              description: 'Segundo Parrafo',
            ),
            ContentColumn(
              title: 'Tercer Columna',
              description: 'Tercer Parrafo',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.amber,
        onPressed: () => Navigator.pushNamed(context, '/top'),
        child: Icon(Icons.star),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
