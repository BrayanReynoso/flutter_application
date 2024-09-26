import 'package:flutter/material.dart';

class Home extends StatelessWidget {
const Home({ super.key });

  @override
  Widget build(BuildContext context){
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Bienevenido'),
                Text('A mi aplicacion')            
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Otra línea'),
                Text('Segundo renglón'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Otra línea'),
                Text('Tercer renglón'),
              ],
            ),
          )
        ],
      ),
    );
  }
}