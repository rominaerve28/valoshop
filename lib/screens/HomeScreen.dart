import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valoshop/screens/DetailProductScreen.dart';

import 'package:valoshop/screens/Inicio.dart';
import 'package:valoshop/screens/HelpScreen.dart';
import 'package:valoshop/screens/SettingsScreen.dart';
import 'package:valoshop/screens/LoginScreen.dart';
import 'package:valoshop/model/Armas.dart';
import 'package:valoshop/widgets/barra_busqueda.dart';
import 'package:valoshop/widgets/Card_Detaild_Product.dart';
import 'package:valoshop/widgets/Card_Form.dart';

import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  static const String routerName = 'Home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.red[50],
            appBar: AppBar(
              backgroundColor: Colors.red[100],
              elevation: 0,
              title: Text("Skins"),
              bottom: TabBar(
                  labelColor: Colors.red[400],
                  indicatorColor: Colors.red[400],
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    //para el container de escopeta
                    const Tab(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("Escopetas"),
                      ),
                    ),
                    //para el container de cuchillos
                    const Tab(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("Cuchillos"),
                      ),
                    ),

                    //para el container de pistolas
                    const Tab(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text("Pistolas"),
                      ),
                    ),
                  ]),
            ),
            drawer: menuLateral(),
            body: TabBarView(
              children: <Widget>[
                //--------------------------------escopetas
                Container(
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                      itemCount: escopetas.length,
                      //muestra dos elementos por fila
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height) /
                              1.3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x000005cc),
                                    blurRadius: 30,
                                    offset: Offset(10, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                  "assets/img/" + escopetas[index].imagen),
                              Text(
                                escopetas[index].nombre,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "USD. " + escopetas[index].precio.toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext) =>
                                            DetailProductScreen()),
                                  );
                                },
                                icon: Icon(Icons.details),
                                label: Text("Ver Detalles de Producto"),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        );
                      }),
                ),

                //------------------------------------------------cuchillos
                Container(
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                      itemCount: cuchillos.length,
                      //muestra dos elementos por fila
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height) /
                              1.3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x000005cc),
                                    blurRadius: 30,
                                    offset: Offset(10, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                  "assets/img/" + cuchillos[index].imagen),
                              Text(
                                cuchillos[index].nombre,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "USD. " + cuchillos[index].precio.toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext) =>
                                            DetailProductScreen()),
                                  );
                                },
                                icon: Icon(Icons.details),
                                label: Text("Ver Detalles de Producto"),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        );
                      }),
                ),

                //--------------------------pistolas
                Container(
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                      itemCount: pistolas.length,
                      //muestra dos elementos por fila
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height) /
                              1.3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x000005cc),
                                    blurRadius: 30,
                                    offset: Offset(10, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                  "assets/img/" + pistolas[index].imagen),
                              Text(
                                pistolas[index].nombre,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "USD. " + pistolas[index].precio.toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext) =>
                                            DetailProductScreen()),
                                  );
                                },
                                icon: Icon(Icons.details),
                                label: Text("Ver Detalles de Producto"),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            )));
  }
}

class menuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            //aqui van nombres del usuario
            accountName: Text(
              "Valoshop",
              style: TextStyle(color: Colors.red[400]),
            ),
            accountEmail: Text(" "),
            decoration: BoxDecoration(
              color: Colors.red[100],
            ),
          ),
          //dirige a inicio del menu lateral
          InkWell(
            child: new ListTile(
              title: Text(
                "Inicio",
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.red[400],
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext) => InicioP()),
              );
            },
          ),

          //dirige a carrito
          InkWell(
            child: new ListTile(
              title: Text(
                "Carro De Compra",
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.add_shopping_cart,
                color: Colors.red[400],
              ),
            ),
            onTap: () {},
          ),

          //dirige a Inicio de Sesión
          InkWell(
            child: new ListTile(
              title: Text(
                "Iniciar Sesión",
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.login,
                color: Colors.red[400],
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext) => LoginUser()),
              );
            },
          ),

          //Dirige a ayuda
          InkWell(
            child: new ListTile(
              title: Text(
                "Ayuda",
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.help_outline,
                color: Colors.red[400],
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext) => HelpScreen()),
              );
            },
          ),

          //Dirige a Configuracion
          InkWell(
            child: new ListTile(
              title: Text(
                "Configuracion",
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.red[400],
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext) => SettingScreen()),
              );
            },
          )
        ],
      ),
    );
  }
}
