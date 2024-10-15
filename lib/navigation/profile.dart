import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Método para cerrar sesión
  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      // Navegar de regreso al inicio o a una pantalla de login
      if (mounted) {
        Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
      }
    } catch (e) {
      print('Error al cerrar sesión: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
         backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresar a la pantalla anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  radius: 32,
                  child: Text('AH'),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '20213tn084@utez.edu.mx',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Brayan Reynoso Macedo')
                  ],
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () async {
                 await _signOut();
                }, child: const Text('Cerrar sessión'))
          ],
        ),
      ),
    );
  }
}