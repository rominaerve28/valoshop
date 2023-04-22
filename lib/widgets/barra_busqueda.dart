
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../delegates/search_skin_delegate.dart';

class BarraBusqueda extends StatelessWidget {
  const BarraBusqueda({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white),
      ),
        child: ListTile(
          onTap: (){
            showSearch(context: context, delegate: SearchSkinDelegate());
          },
          title: Row(
            children: [
              Expanded(
                child: Text('Buscar', style: GoogleFonts.mcLaren( color: Colors.pink[300]),)
              ),
              IconButton(
                onPressed: ()=> print('microfono presionado'), 
                icon: Icon(
                  Icons.mic,
                  color: Colors.pink[300],
                )
              )
            ],
          ) 
        ),
      ),
    );
  }
}
