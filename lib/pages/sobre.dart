import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({Key? key}) : super(key: key);

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
        title: const Text("SOBRE"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 12, left: 30),
                      child: const Text(
                        'Sobre nós: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    width: 350,
                    margin: const EdgeInsets.only(top: 12),
                    child: const Text(
                      ' A plataforma, que denominamos FilantroHub, tem como objetivo facilitar a vida de pessoas que desejam ajudar o próximo de alguma forma, divulgando um projeto social em andamento ou se voluntariando em um. Os usuários interessados em participar de um projeto social em andamento divulgado no site podem contribuir de duas formas. A primeira delas é se voluntariar para trabalhar presencialmente nos dias em que o projeto realiza seus serviços ou fazendo alguma contribuição, seja ela financeira ou material, seguindo os critérios definidos pelo próprio criador do projeto na descrição do mesmo.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.justify,
                    ),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
