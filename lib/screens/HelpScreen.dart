import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(const HelpScreen());

class HelpScreen extends StatelessWidget {
    static const String routerName = 'Help';

  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Ayuda', style: GoogleFonts.mcLaren() ),
        backgroundColor: Colors.pink[300],
        centerTitle: true,
        
      ),
      body: Text('pantalla de ayuda'),
     
    );
  }
}
