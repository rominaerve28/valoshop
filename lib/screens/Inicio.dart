import 'package:flutter/material.dart';
import 'package:valoshop/screens/HomeScreen.dart';

class InicioP extends StatefulWidget {
  const InicioP({super.key});

  @override
  State<InicioP> createState() => _InicioP();
}

class _InicioP extends State<InicioP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Container(
        child: Stack(
          children: <Widget>[
            //barra lateral
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: Container(
                  padding:
                      EdgeInsets.only(right: 15, left: 5, top: 50, bottom: 50),
                  decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                      )),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Tu tienda de confianza",
                        style: TextStyle(
                          color: Colors.grey[100],
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          letterSpacing: 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //todo el inicio
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //el ancho de la imagen
                Center(
                  child: Image.asset(
                    "assets/img/logo.png",
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 100)),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    primary: Colors.red[400],
                    padding: EdgeInsets.all(20.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (BuildContext) => HomeScreen()),
                    );
                  },
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
