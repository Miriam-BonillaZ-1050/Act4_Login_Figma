import 'package:flutter/material.dart';

void main() => runApp(PumasJrzApp());

class PumasJrzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pumas Jrz',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd6e6ed), // fondo azul claro
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              color: Color(0xFF60788b),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.menu, color: Colors.white),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Icon(Icons.search, size: 20),
                          SizedBox(width: 8),
                          Expanded(
                              child: TextField(
                                  decoration: InputDecoration.collapsed(
                                      hintText: 'Buscar'))),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.shopping_cart, color: Colors.white),
                  SizedBox(width: 10),
                  Icon(Icons.person, color: Colors.white),
                ],
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Inicio de Sesion',
              style: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF89a9c4),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(3, 3),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nombre de Usuario:',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    SizedBox(height: 8),
                    TextField(
                      controller: userController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text('Contraseña:',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    SizedBox(height: 8),
                    TextField(
                      controller: passController,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              child: Text('Iniciar Sesion',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: StadiumBorder(),
                elevation: 6,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
            ),

            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Inicio de Sesion como Administrador',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber[100],
                foregroundColor: Colors.black87,
                shape: StadiumBorder(),
                elevation: 6,
              ),
            ),

            SizedBox(height: 20),
            Text('¿No tienes una cuenta registrada?',
                style: TextStyle(fontStyle: FontStyle.italic)),
            Text('Registrate Aqui:',
                style: TextStyle(fontStyle: FontStyle.italic)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Registrar cuenta',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent[100],
                foregroundColor: Colors.black87,
                shape: StadiumBorder(),
                elevation: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
