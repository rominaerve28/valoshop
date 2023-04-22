import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valoshop/widgets/Card_Detaild_Product.dart';
import 'DetailBuyeScreen.dart';
import 'HomeScreen.dart';

void main() => runApp(const DetailProductScreen());

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Vandal Prime',
                style: GoogleFonts.mcLaren(
                    fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            cardProductDetail(),
            SizedBox(
              height: 20,
            ),
            Text('Precio',
                style: GoogleFonts.mcLaren(
                    fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Text('15',
                style: GoogleFonts.mcLaren(
                    fontWeight: FontWeight.bold, fontSize: 20)),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (BuildContext) => DetailBuyScreen()),
                );
              },
              icon: Icon(Icons.details),
              label: Text("Ver Detalles de Producto"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Detalle del Articulo', style: GoogleFonts.mcLaren()),
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
    );
  }
}
