import 'package:flutter/material.dart';
import 'package:trabalho_pontuado/pages/administration.dart';
import 'package:trabalho_pontuado/pages/contatos.dart';
import 'package:trabalho_pontuado/pages/home.dart';
import 'package:trabalho_pontuado/pages/sobre.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FilantroHub',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/Sobre': (_) => const SobrePage(),
        '/Contatos': (_) => const Contatos(),
        '/Login': (_) => const Login()
      },
    );
  }
}

