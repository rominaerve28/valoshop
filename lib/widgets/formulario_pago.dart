import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:valoshop/screens/HomeScreen.dart';

class FormCard extends StatefulWidget {
  const FormCard({super.key});

  @override
  State<FormCard> createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  //tarjeta
  var cardMask = MaskTextInputFormatter(
      mask: '####-####-####-####', filter: {"#": RegExp(r'[0-9]')});
  //fecha
  var datemask =
      MaskTextInputFormatter(mask: '##/##', filter: {"#": RegExp(r'[0-9]')});
  //code
  var codemask =
      MaskTextInputFormatter(mask: '###', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Image.asset("assets/img/tarjetacredito.jpg"),
        const SizedBox(
          height: 20,
        ),
        _InputNombre(),
        SizedBox(
          height: 10,
        ),
        _InputCard(),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: _InputDate(),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: _InputCode(),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width - 30,
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext) => HomeScreen()),
                );
              },
              child: Text("Pagar")),
        )
      ],
    ));
  }

  Container _InputNombre() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "Ingrese Nombre que Aparece en Tarjeta",
            border: InputBorder.none),
      ),
    );
  }

  Container _InputCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        inputFormatters: [cardMask],
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: "0000-0000-0000-0000", border: InputBorder.none),
      ),
    );
  }

  Container _InputDate() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return null;
          }
          final components = value.split("/");
          if (components.length == 3) {
            final month = int.tryParse(components[0]);
            final year = int.tryParse(components[1]);
            if (month != null && year != null) {
              final date = DateTime(month, year);
              if (date.year == year && date.month == month) {
                return null;
              }
            }
          }
          return "wrong date";
        },
        keyboardType: TextInputType.number,
        inputFormatters: [datemask],
        style: TextStyle(fontSize: 20),
        decoration:
            InputDecoration(hintText: "01/2024", border: InputBorder.none),
      ),
    );
  }

  Container _InputCode() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        keyboardType: TextInputType.number,
        inputFormatters: [codemask],
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(hintText: "000", border: InputBorder.none),
      ),
    );
  }
}
