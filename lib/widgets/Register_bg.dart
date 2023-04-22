import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterBg extends StatelessWidget {
  final Widget child;

  const RegisterBg({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // child: Image(image: AssetImage('assets/logo.png')),
      child: Stack(
        children: [
          _ImageLogin(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 320,
              ),
              Text(
                'Registro de Usuario',
                style: GoogleFonts.mcLaren(fontSize: 25),
              )
            ],
          ),
          // ignore: unnecessary_this
          this.child
        ],
      ),
    );
  }
}

class _ImageLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage("assets/img/logo.png")),
    );
  }
}

// class _TextLogin extends StatelessWidget {
//   const _TextLogin({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       verticalDirection: VerticalDirection.up,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [Text('Holaaaaaa')],
//     );
//   }
// }
