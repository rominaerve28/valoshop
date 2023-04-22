import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:valoshop/provider/LoginProvaider.dart';
import 'package:valoshop/screens/HomeScreen.dart';
import 'package:valoshop/screens/RegisterScreen.dart';
import 'package:valoshop/widgets/widgets.dart';

import '../interfaces/input_decorations.dart';

void main() => runApp(const LoginUser());

class LoginUser extends StatelessWidget {
  static const String routerName = 'Login';
  const LoginUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión', style: GoogleFonts.mcLaren()),
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
      body: LoginBg(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            CardContainer(
              child: CardContainer(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Icon(Icons.person, color: Colors.white, size: 60),
                    const SizedBox(
                      height: 15,
                    ),
                    ChangeNotifierProvider(
                      create: (_) => LoginProviderForm(),
                      child: const _LoginForm(),
                    ),
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
                    'Crear una nueva cuenta',
                    style: GoogleFonts.mcLaren(),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (BuildContext) => RegisterScreen()),
                  );
                }),
          ],
        ),
      )),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginProviderForm>(context);
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Form(
          key: loginForm.keyForm,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.LoginInputDecoration(
                    hintText: 'Correo Electronico',
                    prefixIcon: Icons.alternate_email),
                onChanged: (value) => loginForm.email = value,
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = RegExp(pattern);
                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'El correo Electronico no es correcto';
                },
              ),
              const SizedBox(height: 60),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.LoginInputDecoration(
                    hintText: 'Contrseña', prefixIcon: Icons.lock_outline),
                onChanged: (value) => loginForm.password = value,
                validator: (value) {
                  if (value != null && value.length >= 7) return null;
                  return 'La contraseña debe tener minimo 7 caracteres';
                },
              ),
              const SizedBox(
                height: 45,
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  disabledColor: Colors.white,
                  elevation: 0,
                  color: Colors.white,
                  // ignore: sort_child_properties_last
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 11),
                    child: Text(
                      loginForm.loading ? 'Espere, ingresando...' : 'Ingresar',
                      style: GoogleFonts.mcLaren(),
                    ),
                  ),
                  onPressed: loginForm.loading
                      ? null
                      : () async {
                          if (!loginForm.validForm()) return;
                          FocusScope.of(context).unfocus();
                          loginForm.loading = true;
                          await Future.delayed(const Duration(seconds: 3));
                          // ignore: use_build_context_synchronously
                          Navigator.pushReplacementNamed(
                              context, HomeScreen.routerName);
                        }),
              const SizedBox(
                height: 40,
              )
            ],
          )),
    );
  }
}
