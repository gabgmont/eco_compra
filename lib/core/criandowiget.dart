import 'package:flutter/material.dart';

//Criando meu Widget:
class ListaClientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Cardwg(PassaDados(123456, '789101112')),
        Cardwg(PassaDados(7891011, '12131415')),
        Cardwg(PassaDados(12131415, '16171819')),
      ],
    );
  }
}

//Encapsulamento:
class Cardwg extends StatelessWidget {
  //final indica que o valor é uma constante
  final PassaDados _passaDados;

  Cardwg(this._passaDados); //construtor(alt+insert)
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.assignment_ind),
        title: Text("CPF: ${_passaDados.cpf.toString()}"),
        subtitle: Text("Senha: ${_passaDados.senha.toString()}"),
      ),
    );
  }
}

//Classe que passa os dados:
class PassaDados {
  final int cpf;
  final String senha;

  PassaDados(this.cpf, this.senha);
}

//Mais um encapsulamento
class ListaClientesEstaticaFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Scaffoldwg());
  }
}

class Scaffoldwg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListaClientes(),
      appBar: AppBar(
        title: Text('Lista de Cadastrados'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Enviar'),
      ),
    );
  }
}

class TelaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Tela de Login'),
          ),
          body: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CPF',
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              )
            ],
          )),
    );
  }
}

class Homepage extends StatelessWidget {
  List<Widget> containers = [
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
    Container(color: Colors.white)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Eco Compra'),
                  Container(
                    width:40,height:40,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzCafLyYK9Yhz74wEDQb95ho6tNXz4-L3GjBP6NEZN7s0nVaSs9Nnw1BwXlYuZsZNNSBs&usqp=CAU'),
                      )
                    ),

                  )
                ],
              ),

              //backgroundColor: Colors.orangeAccent,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.lightGreen,
                  Colors.lightGreenAccent,
                ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
              ),
              elevation: 5,
              bottom: TabBar(
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home_outlined),
                    text: 'Home',
                  ),
                  Tab(
                    icon: Icon(Icons.store_outlined),
                    text: 'Marketplace',
                  ),
                  Tab(
                    icon: Icon(Icons.location_on_outlined),
                    text: 'Pickup Points',
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                  Container(child: Text('alo'),),
                  Container(child:Column()),
                  Container(child: Text('alo'),)
              ],
            )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget bildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}
class MarketPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      body: Column(
        children: [
          Container(
            width:500,height: 40,
            child: ListView(
              children: [

                Image.asset('assets/images/amazon.jpg',
                fit:BoxFit.fill ,)
              ],
            ),
          )
        ],
      ),
    ));
  }
}