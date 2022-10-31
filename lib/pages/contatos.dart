import 'package:flutter/material.dart';

class Contatos extends StatelessWidget {
  const Contatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("../images/plano_de_fundo.jpg"),
              )),
              accountName: Text('Bruno'),
              accountEmail: Text('Prupo@hotmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("../images/imagem_icone.jpg"),
              ),
            ),
            ListTile(
                leading: const Icon(
                  // <-- Icon
                  Icons.home_rounded,
                  size: 24.0,
                ),
                title: const Text('HOME'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed('/');
                }),
            ListTile(
                leading: const Icon(
                  // <-- Icon
                  Icons.question_mark_outlined,
                  size: 24.0,
                ),
                title: const Text('Sobre'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed('/Sobre');
                }),
            ListTile(
                leading: const Icon(
                  // <-- Icon
                  Icons.contact_page_outlined,
                  size: 24.0,
                ),
                title: const Text('Contatos'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed('/Contatos');
                }),
            ListTile(
                leading: const Icon(
                  // <-- Icon
                  Icons.admin_panel_settings_outlined,
                  size: 24.0,
                ),
                title: const Text('Administração'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed('/Login');
                }),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 60,
        title: const Text("CONTATOS"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                width: 400,
                margin: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 400,
                margin: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
              ),
              Container(
                height: 100,
                width: 370,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: const Text(
                  'TEXTO PARA SER ENVIADO',
                  style: TextStyle(fontSize: 20),
                  //resultado,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Confirmar'),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 6, top: 10),
                color: Colors.blueGrey,
                width: 375,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "@Copyright - No ar desde Novembro/2022 ",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
