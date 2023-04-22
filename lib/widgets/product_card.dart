import 'package:flutter/material.dart';
import 'package:valoshop/screens/DetailProductScreen.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => const DetailProductScreen()));
        },
        child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 30),
          width: double.infinity,
          height: 325,
          decoration: cardBords(),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
      
              _FondoImg(),
      
              _DetallesProduct(),
      
              Positioned(
                top: 0,
                right: 0,
                child: _TagPrecio()
                )
      
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration cardBords() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(25),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        offset: Offset(0,7),
        blurRadius: 12
      )
    ]
  );
}

class _TagPrecio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('\$15.99', style: TextStyle(color: Colors.white, fontSize: 20),)
          ),
      ),
      width: 90,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.pink[300],
        borderRadius: const  BorderRadius.only(topRight: Radius.circular(25), bottomLeft: Radius.circular(25))
      ),
    );
  }
}

class _DetallesProduct extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 50),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        height: 50,
        decoration: _buildBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vandal Supreme', 
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              )
          ]),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
    color: Colors.pink[300],
    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), topRight: Radius.circular(25))

  );
}

class _FondoImg extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 400,
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: AssetImage('assets/valorant-skin-prime-vandal.png'),
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}