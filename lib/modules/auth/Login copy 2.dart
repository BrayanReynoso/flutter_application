import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: const Text('AH'),
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bryan.r0',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    'hace 10 minutos',
                    style: TextStyle(color: Colors.black54, fontSize: 12.0),
                  )
                ],
              ),
              const Expanded(
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.more_horiz)))

                      // const Spacer(),
              //const Icon(Icons.more_horiz)
            ],
          ),
          Image.asset(
            'assets/backround.png',
            width: double.infinity,
            height: 300,
          ),
          const Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              Icon(Icons.message),
              Icon(Icons.send),
              Expanded(
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.save_alt))),
            ],
          )
        ],
      ),
    );
  }
}
