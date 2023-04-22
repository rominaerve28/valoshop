import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valoshop/screens/HomeScreen.dart';

import '../widgets/formulario_pago.dart';

void main() => runApp(const DetailBuyScreen());

class DetailBuyScreen extends StatelessWidget {
  static const String routerName = 'DetailBuy';
  const DetailBuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pago con tarjeta', style: GoogleFonts.mcLaren()),
          backgroundColor: Colors.red[100],
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Menu Icon',
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext) => HomeScreen()),
              );
            },
          ),
        ),
        body: const FormCard(),
      ),
    );
  }
}
