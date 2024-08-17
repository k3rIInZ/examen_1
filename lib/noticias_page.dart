import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget {
  const NoticiasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Index 1: Noticias',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, backgroundColor: Color.fromARGB(255, 243, 33, 33), color: Colors.white),
      ),
    );
  }
}