import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/widgets/text_form_field_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  var _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/log.png', width: 200, height: 200),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Correo electronico',
                  label: Text('Correo electronico'),
                  labelStyle: TextStyle(color: Colors.black)),
              keyboardType: TextInputType.emailAddress,
              controller: _email,
            ),
            const SizedBox(
              height: 16,
            ),
            /*TextFormField(
              decoration: InputDecoration(
                  hintText: 'Contraseña',
                  label: const Text('Contraseña'),
                  labelStyle: const TextStyle(color: Colors.black),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(_isObscure
                          ? Icons.visibility
                          : Icons.visibility_off))),
              controller: _password,
              obscureText: _isObscure,
            ),*/
            TextFieldPassword(
              controller: _password,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () async {
                  try {
                    final credential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _email.text, password: _password.text);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                    }
                  }
                },
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: const Text(
                  'Iniciar Sesión',
                ),
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              child: const Text(
                'Registrarse',
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline, decorationColor: Colors.blue),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
