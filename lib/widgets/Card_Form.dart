import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
          width: double.infinity,
          decoration: _cardForm(),
          
          
          child:this.child),
    );
  }

  BoxDecoration _cardForm() => BoxDecoration(
          color: const Color.fromRGBO(230, 137, 137, 1),
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [

          ]);
}
