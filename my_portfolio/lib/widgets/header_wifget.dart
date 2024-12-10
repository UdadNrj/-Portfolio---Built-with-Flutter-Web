import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset('assets/icons/paw_logo.png',
              height: 40), // Icono animalista
          SizedBox(width: 10),
          Text('My Animalist Portfolio'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/about');
          },
          child: Text('About Me', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/projects');
          },
          child: Text('Projects', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/contact');
          },
          child: Text('Contact', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
