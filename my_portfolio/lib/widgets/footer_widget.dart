import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.green[900],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Let\'s connect!',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.linked_camera), // Icono animalista divertido
                color: Colors.white,
                onPressed: () {
                  // Acción para redes sociales
                },
              ),
              IconButton(
                icon: Icon(Icons.email),
                color: Colors.white,
                onPressed: () {
                  // Acción para correo
                },
              ),
              IconButton(
                icon: Icon(Icons.pets), // Toque temático animalista
                color: Colors.white,
                onPressed: () {
                  // Acción para GitHub
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
