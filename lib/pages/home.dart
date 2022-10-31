import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 12, left: 150),
                  child: const Text(
                    "FILANTROHUB",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                    "Projetos em Destaque: ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 12, left: 100),
                      child: Column(
                        children: [
                          Image.asset(
                            '../images/doacao_de_roupas.png',
                            width: 200,
                            height: 200,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                child: const Text(
                                  "Doação de roupas",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: 200,
                                child: const Text(
                                  "Venha fazer parte de uma ação beneficente na cidade de Salvador, distribuindo roupas há 30 anos com a parceria de voluntários!",
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: 200,
                                child: const Text(
                                  "Data: 28/10/2022\n"
                                  "Local: Salvador\n"
                                  "Participantes: 200\n",
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12, left: 100),
                      child: Column(
                        children: [
                          Image.asset(
                            '../images/doacao_de_comida.png',
                            width: 200,
                            height: 200,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                child: const Text(
                                  "Doação de comida",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: 200,
                                child: const Text(
                                  "Venha fazer parte de uma ação beneficente na cidade de Salvador, distribuindo comida há 40 anos com a parceria de voluntários!",
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: 200,
                                child: const Text(
                                  "Data: 30/10/2022\n"
                                  "Local: Salvador\n"
                                  "Participantes: 100\n",
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 375,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black26)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12, left: 100),
                  child: const Text(
                    "Instituições em Destaque: ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 12, left: 100),
                      child: Column(
                        children: [
                          Image.asset(
                            '../images/projetos_sociais.png',
                            width: 200,
                            height: 200,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                child: const Text(
                                  "Titulo institucional",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: 200,
                                child: const Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12, left: 100),
                      child: Column(
                        children: [
                          Image.asset(
                            '../images/projetos_sociais.png',
                            width: 200,
                            height: 200,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                child: const Text(
                                  "Titulo institucional",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: 200,
                                child: const Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 6),
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
    );
  }
}
