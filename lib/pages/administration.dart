import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          title: const Text("LOGIN"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.login), text: 'Sign in'),
              Tab(icon: Icon(Icons.create), text: 'Sign up'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 400,
                    margin: const EdgeInsets.all(10),
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: 'Login',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 400,
                    margin: const EdgeInsets.all(10),
                    child: const TextField(
                      decoration: InputDecoration(labelText: 'Senha'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text('Confirmar'),
                  ),
                  Container(
                    height: 100,
                    width: 370,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: const Text(
                      '',
                      style: TextStyle(fontSize: 20),
                      //resultado,
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
            )),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 400,
                      margin: const EdgeInsets.all(10),
                      child: const TextField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 400,
                      margin: const EdgeInsets.all(10),
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: 'Login',
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 400,
                      margin: const EdgeInsets.all(10),
                      child: const TextField(
                        decoration: InputDecoration(labelText: 'Password'),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: const Text('Registrar-se'),
                    ),
                    Container(
                      height: 100,
                      width: 370,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: const Text(
                        '',
                        style: TextStyle(fontSize: 20),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
