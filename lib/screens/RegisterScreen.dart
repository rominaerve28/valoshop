import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valoshop/screens/HomeScreen.dart';
import 'package:valoshop/screens/LoginScreen.dart';
import 'package:valoshop/widgets/widgets.dart';

import '../interfaces/input_decorations.dart';

void main() => runApp(const RegisterScreen());

class RegisterScreen extends StatelessWidget {
  static const String routerName = 'Register';
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro', style: GoogleFonts.mcLaren()),
        backgroundColor: Colors.red[100],
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Menu Icon',
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext) => LoginUser()),
            );
          },
        ),
      ),
      body: RegisterBg(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            CardContainer(
              child: CardContainer(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 15,
                    ),
                    Icon(Icons.person, color: Colors.white, size: 60),
                    SizedBox(
                      height: 15,
                    ),
                    _RegisterForm(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.white,
                elevation: 0,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 11),
                  child: Text(
                    'Iniciar Sesión',
                    style: GoogleFonts.mcLaren(),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext) => LoginUser()),
                  );
                }),
          ],
        ),
      )),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                obscureText: false,
                keyboardType: TextInputType.name,
                decoration: InputDecorations.LoginInputDecoration(
                    hintText: 'Nombre de Usuario',
                    prefixIcon: Icons.verified_user_sharp),
              ),
              const SizedBox(height: 20),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.LoginInputDecoration(
                    hintText: 'Correo Electronico',
                    prefixIcon: Icons.alternate_email),
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = new RegExp(pattern);
                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'El correo Electronico no es correcto';
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecorations.LoginInputDecoration(
                    hintText: 'Contraseña Nueva',
                    prefixIcon: Icons.lock_outline),
                validator: (value) {
                  if (value != null && value.length >= 7) return null;
                  return 'La contraseña debe tener minimo 7 caracteres';
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                autocorrect: false,
                obscureText: false,
                keyboardType: TextInputType.text,
                decoration: InputDecorations.LoginInputDecoration(
                    hintText: 'Sexo', prefixIcon: Icons.question_answer),
                validator: (value) {
                  if (value != null && value == 'Hombre' && value == 'Mujer')
                    return null;
                  return 'Escribir Correctamente su Género';
                },
              ),
              const SizedBox(height: 35),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.white,
                  elevation: 0,
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 11),
                    child: Text(
                      'Crear Cuenta',
                      style: GoogleFonts.mcLaren(),
                    ),
                  ),
                  onPressed: () {}),
              SizedBox(
                height: 40,
              )
            ],
          )),
    );
  }
}
